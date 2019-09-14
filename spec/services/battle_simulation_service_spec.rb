require 'rails_helper'

RSpec.describe BattleSimulationService, type: :service do
  describe '#call' do
    subject(:たたかう) { instance.call }

    let(:instance) { described_class.new }

    before do
      create(:ハッサン, :レベル20)
      create(:ミレーユ, :レベル20)
      create(:バーバラ, :レベル20)
      create(:テリー, :レベル28)
      create(:きりさきピエロ)
      create(:メタルスライム)
    end

    it '素早い順で攻撃する' do
      expect(instance).to receive(:こうげき).and_call_original.exactly(6).times
      expect(たたかう.map(&:なまえ)).to eq %w[メタルスライム テリー ミレーユ バーバラ ハッサン きりさきピエロ]
    end
  end
end
