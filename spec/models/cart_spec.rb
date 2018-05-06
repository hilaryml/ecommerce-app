require 'rails_helper'

RSpec.describe Cart, type: :model do

  describe 'validations' do

    it 'requires a user upon creation' do
      cart = build(:cart, user: nil)

      expect(cart.valid?).to equal(false)
      expect(cart.errors.full_messages).to eq(["User must exist"])
    end
  end

  describe 'relationships' do

    pending 'has many line items that are destroyed upon deletion of cart'

    pending 'has many items through line items'

    it 'it belongs to a user' do
      cart = create(:cart)

      expect(cart.user.email).to eq("avi@flatironschool.com")
    end

  end
end
