# frozen_string_literal: true
# spec/models/dashboard_spec.rb

require 'rails_helper'

RSpec.describe Dashboard, type: :model do
  it 'can be instantiated' do
    expect(Dashboard.new).to be_an_instance_of(Dashboard)
  end

  # Add more tests here as you add validations, associations, or methods
end
