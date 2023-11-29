class Gallery < ApplicationRecord
    # Associations
    has_many :posts
    # , dependent: :destroy # Ensures posts are deleted when the gallery is.
  
    # Validations
    validates :name, presence: true

    
  
    # Scopes
    # Assuming you want to retrieve posts by their description, you would define a scope like this.
    # Note that scopes on the Gallery model related to posts attributes are unusual. 
    # Normally such scopes would be defined in the Post model itself.
    # However, if you need to use it through gallery for some reason, it would look something like this:
    # def self.description_is(description)
    #   posts.where(description: description)
    # end
  end
  