require 'rails_helper'

RSpec.describe WasteCompany do
  describe 'relationships' do
    it { should have_many(:drivers) }
  end
end
