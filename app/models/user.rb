# class users
# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # :registerable, :recoverable, :validatable

  has_one :user
  has_many :posts

  devise :database_authenticatable, :rememberable
  devise :omniauthable, omniauth_providers: %i[github]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.new_with_session(params, session)
    super.tap do |user|
      if ((data = session['devise.github_data'] && session['devise.github_data']['extra']['raw_info'])) && user.email.blank?
        user.email = data['email']
      end
    end
  end

  def admin?
    admin
  end

  def self.from_omniauth(auth_hash)
    email = auth_hash['info']['email']
    uid = auth_hash['uid']

    user = User.find_by(email:)

    if user
      user.uid = uid
      user.provider = 'github'
    else

      user = User.new(email:, uid:, provider: 'github')
      user.password = Devise.friendly_token[0, 20]
    end

    user.save! if user.changed?
    user
  end
end
