require 'rails_helper'

RSpec.describe Driver, type: :model do
  describe 'relationships' do
    it { should have_many(:customers) }
  end
end
