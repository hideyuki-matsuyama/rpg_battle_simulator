require 'rails_helper'

RSpec.describe AttackService, type: :service do
  describe '#call' do
    subject(:こうげき) { described_class.new(する子, される子).call }

    let(:する子) { create(:ハッサン, :レベル20, ちから: 200) }
    let(:される子) { create(:テリー, :レベル28, HP: 100, みのまもり: 40) }

    it '攻撃される子がダメージを受ける' do
      expect { こうげき }.to change(される子, :HP).from(100).to(10)
    end

    context '与えるダメージがマイナス', issue: '#1' do
      let(:する子) { create(:メタルスライム) }
      let(:される子) { create(:ミレーユ, :レベル99) }

      it '攻撃される子がダメージを受けない' do
        expect { こうげき }.not_to change(される子, :HP)
      end
    end
  end

  describe '.ヌワス' do
    subject { described_class.ヌワス }

    it { is_expected.to eq 'パパーーっっ！！' }
  end
end
