require 'rails_helper'

RSpec.describe AttackService, type: :service, issue: '#21' do
  describe '#call' do
    subject(:こうげき) { described_class.new(する子, される子).call }

    let(:する子) { create(:ハッサン, :レベル20, ちから: 200) }
    let(:される子) { create(:テリー, :レベル28, HP: 100, みのまもり: 40) }

    it 'Creature#いてっ！ を呼び出す' do
      expect(される子).to receive(:いてっ！).at_least(:once)
      こうげき
    end

    it '攻撃される子のHPが減る' do
      expect { こうげき }.to change(される子, :HP).from(100).to(10)
    end
    it '"〜に xxの ダメージ！！"のメッセージが出力される' do
      こうげきメッセ = 'ハッサンの こうげき！'
      しゅびメッセ = 'テリーに 90の ダメージ！！'
      expect_any_instance_of(described_class).to receive(:メッセージ出力).with(こうげきメッセ).once
      expect_any_instance_of(described_class).to receive(:メッセージ出力).with(しゅびメッセ).once
      こうげき
    end

    context '与えるダメージがマイナス' do
      let(:する子) { create(:メタルスライム) }
      let(:される子) { create(:ミレーユ, :レベル99) }

      it '攻撃される子のHPが変化しない' do
        expect { こうげき }.not_to change(される子, :HP)
      end
      it '"〜は ダメージを あたえられない！"のメッセージが出力される' do
        こうげきメッセ = 'メタルスライムの こうげき！'
        しゅびメッセ = 'ミレーユに ダメージを あたえられない！'
        expect_any_instance_of(described_class).to receive(:メッセージ出力).with(こうげきメッセ).once
        expect_any_instance_of(described_class).to receive(:メッセージ出力).with(しゅびメッセ).once
        こうげき
      end
    end

    context '敵を倒した' do
      let(:する子) { create(:バーバラ, :レベル99) }
      let(:される子) { create(:スライムベス) }

      it '"〜を たおした！"のメッセージが出力される' do
        こうげきメッセ = 'バーバラの こうげき！'
        しゅびメッセ = 'スライムベスに 135の ダメージ！！'
        獲ったど = 'スライムベスを たおした！'
        expect_any_instance_of(described_class).to receive(:メッセージ出力).with(こうげきメッセ).once
        expect_any_instance_of(described_class).to receive(:メッセージ出力).with(しゅびメッセ).once
        expect_any_instance_of(described_class).to receive(:メッセージ出力).with(獲ったど).once
        こうげき
      end
    end

    context '仲間がしんだ' do
      let(:する子) { create(:ダークドレアム) }
      let(:される子) { create(:テリー, HP: 200) }

      it '"〜は しんでしまった！"のメッセージが出力される' do
        こうげきメッセ = 'ダークドレアムの こうげき！'
        しゅびメッセ = 'テリーに 205の ダメージ！！'
        獲ったど = 'テリーは しんでしまった！'
        expect_any_instance_of(described_class).to receive(:メッセージ出力).with(こうげきメッセ).once
        expect_any_instance_of(described_class).to receive(:メッセージ出力).with(しゅびメッセ).once
        expect_any_instance_of(described_class).to receive(:メッセージ出力).with(獲ったど).once
        こうげき
      end
    end
  end
end
