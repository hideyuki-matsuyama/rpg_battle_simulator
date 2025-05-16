# == Schema Information
#
# Table name: creatures
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
#  type                    :string(255)      not null
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#
# Indexes
#
#  index_creatures_on_type  (type)
#

require 'rails_helper'

RSpec.describe Creature, issue: '#3', type: :model do
  let(:サンチョ) { create(:adventurer, なまえ: 'サンチョ', HP: 50, さいだいHP: 50) }

  describe '#いてっ！' do
    it { expect { サンチョ.いてっ！(30) }.to change(サンチョ, :HP).from(50).to(20) }

    context '坊ちゃんからオーバーキル', issue: '#21' do
      subject(:サンチョ被弾) { サンチョ.いてっ！(9999) }

      it 'HPは0' do
        expect { サンチョ被弾 }.to raise_error Status::URRRAAHH
        expect(サンチョ.HP).to eq 0
      end
    end
  end

  describe '#いきてる？' do
    it { expect(サンチョ.いきてる？).to be true }

    context 'HP == 0' do
      before { サンチョ.HP = 0 }

      it { expect(サンチョ.いきてる？).to be false }
    end
  end

  describe '#しぼんぬ？' do
    it { expect(サンチョ.しぼんぬ？).to be false }

    context 'HP == 0' do
      before { サンチョ.HP = 0 }

      it { expect(サンチョ.しぼんぬ？).to be true }
    end
  end
end
