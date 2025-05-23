require 'rails_helper'

RSpec.describe BattleSimulationService, type: :service do
  describe '#call' do
    subject(:たたかう) { バトルシミュレーター.call }

    let(:バトルシミュレーター) { described_class.new }

    before do
      create(:ハッサン, :レベル20)
      create(:ミレーユ, :レベル20)
      create(:バーバラ, :レベル20)
      create(:テリー, :レベル28)
      create(:きりさきピエロ)
      create(:メタルスライム)
    end

    it '現れたモンスターの名前がメッセージとして出力される', issue: '#10' do
      モンス_1 = 'きりさきピエロが あらわれた！'
      モンス_2 = 'メタルスライムが あらわれた！'
      expect_any_instance_of(described_class).to receive(:メッセージ出力).with(モンス_1).once
      expect_any_instance_of(described_class).to receive(:メッセージ出力).with(モンス_2).once
      たたかう
    end

    it '素早い子から順番に攻撃する' do
      expect(バトルシミュレーター).to receive(:こうげき).and_call_original.exactly(6).times
      expect(たたかう.map(&:なまえ)).to eq %w[メタルスライム テリー ミレーユ バーバラ ハッサン きりさきピエロ]
    end

    it 'saveに失敗したらrollbackされる' do
      allow_any_instance_of(Adventurer).to receive(:valid?).and_return false
      expect { begin たたかう; rescue; end }.not_to change { Creature.all.select(Creature.column_names).map(&:inspect) }
    end
  end

  describe '#さあて、どいつからかたづけてやるかな・・・', issue: '#7' do
    subject(:チミに決めた！) { described_class.new.send(:さあて、どいつからかたづけてやるかな・・・, create(:ハッサン, :レベル20)) }

    before do
      create(:きりさきピエロ, HP: 76)
      create(:スライムベス, HP: 12)
      create(:メタルスライム, HP: 5)
      allow_any_instance_of(AttackService).to receive(:与えるダメージ).and_return(与ダメ予想値)
    end

    let(:与ダメ予想値) { 3 }

    it 'HPが最も低い敵を選ぶ' do
      expect(チミに決めた！.なまえ).to eq 'メタルスライム'
    end

    context 'ワンキルできそうな敵がいる' do
      let(:与ダメ予想値) { 20 }

      it 'その中からHPが最も高い敵を選ぶ' do
        expect(チミに決めた！.なまえ).to eq 'スライムベス'
      end
    end
  end
end
