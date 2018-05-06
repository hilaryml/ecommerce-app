require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do

    it 'requires an email and password upon creation' do
      user = build(:user, email: nil, password: nil)

      expect(user.valid?).to equal(false)
      expect(user.errors.full_messages).to eql([
        "Password can't be blank",
        "Email can't be blank",
        "Email is invalid"
      ])
    end

    it 'requires that an email is unique' do
      create(:user)
      user = build(:user)

      expect(user.valid?).to equal(false)
      expect(user.errors.full_messages).to eql([
        "Email has already been taken"
      ])
    end

    it 'requires that an email is valid (contains an @ symbol and a .com, .org, etc)' do
      user1 = build(:user, email: 'avi.com')
      user2 = build(:user, email: 'avi@something')
      user3 = build(:user, email: 'avi')

      expect(user1.valid?).to equal(false)
      expect(user1.errors.full_messages).to eql([
        "Email is invalid"
      ])
      expect(user2.valid?).to equal(false)
      expect(user3.valid?).to equal(false)
    end

  end

  describe 'on save' do

    it 'hashes a password'

  end

  describe 'relationships' do

    it 'has one cart'

    it 'has many orders'

  end
end
