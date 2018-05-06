require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do

    it 'requires an email and password upon creation'

    it 'requires that an email is unique'

  end

  describe 'on save' do

    it 'hashes a password'

  end
  
  describe 'relationships' do

    it 'has one cart'

    it 'has many orders'

  end
end
