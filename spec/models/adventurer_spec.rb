# == Schema Information
#
# Table name: adventurers
#
#  id                      :bigint           not null, primary key
#  agility                 :integer          default(0), not null
#  avoidance_power         :integer          default(0), not null
#  concentration_power     :integer          default(0), not null
#  intelligence            :integer          default(0), not null
#  max_avoidance_power     :integer          default(0), not null
#  max_concentration_power :integer          default(0), not null
#  name                    :string(255)      not null
#  strength                :integer          default(0), not null
#  toughness               :integer          default(0), not null
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

require 'rails_helper'

RSpec.describe Adventurer, type: :model do
  subject(:冒険者) { create(:adventurer) }

  describe 'validates' do
    it 'なまえは必須' do
      冒険者.なまえ = ''
      expect(冒険者.valid?).to eq false
    end
  end

  describe '#こうげき力' do
    before { 冒険者.ちから = 60 }

    it 'ちからと同じ' do
      expect(冒険者.こうげき力).to eq 60
    end
  end

  describe '#しゅび力' do
    before { 冒険者.みのまもり = 55 }

    it 'みのまもりと同じ' do
      expect(冒険者.しゅび力).to eq 55
    end
  end
end
