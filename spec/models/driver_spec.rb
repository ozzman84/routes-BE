require 'rails_helper'

RSpec.describe Driver, type: :model do
  describe 'relationships' do
    it { should have_many(:customers) }
    it { should belong_to(:waste_company) }
  end
end
