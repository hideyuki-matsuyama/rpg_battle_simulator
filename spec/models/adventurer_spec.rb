require 'rails_helper'

RSpec.describe Adventurer, type: :model do
  describe 'おれおれ' do
    subject(:ore) { build(:adventurer) }

    it { is_expected.to be_present }
    it { expect(ore.name).to eq 'おれおれ' }
  end
end
