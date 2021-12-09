require 'rails_helper'

RSpec.describe Location do
  describe 'relationships' do
    it { should belong_to(:customer) }
  end
end
