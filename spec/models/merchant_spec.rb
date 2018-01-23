require 'rails_helper'

RSpec.describe Merchant, type: :model do
  describe 'relationships' do
    it {should have_many :invoices}
    it {should have_many(:customers).through :invoices}
  end
end
