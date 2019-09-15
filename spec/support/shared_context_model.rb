RSpec.shared_examples '基本パラメータ' do
  describe '#こうげき力' do
    before { 生き物.ちから = 60 }

    it 'ちからと同じ' do
      expect(生き物.こうげき力).to eq 60
    end
  end

  describe '#しゅび力' do
    before { 生き物.みのまもり = 55 }

    it 'みのまもりと同じ' do
      expect(生き物.しゅび力).to eq 55
    end
  end

  describe 'validates' do
    context 'なまえ == ""' do
      before { 生き物.なまえ = '' }

      it { expect(生き物.valid?).to eq false }
    end

    context 'HP == 0', issue: '#3' do
      before { 生き物.HP = 0 }

      it { expect(生き物.valid?).to eq true }
    end

    context 'HP == 0.1', issue: '#3' do
      before { 生き物.HP = 0.1 }

      it { expect(生き物.valid?).to eq true }
    end

    context 'HP == さいだいHP', issue: '#3' do
      before { 生き物.HP = 生き物.さいだいHP }

      it { expect(生き物.valid?).to eq true }
    end

    context 'HP > さいだいHP', issue: '#3' do
      before { 生き物.HP = 生き物.さいだいHP + 1 }

      it { expect(生き物.valid?).to eq false }
    end

    context 'HP == -1', issue: '#3' do
      before { 生き物.HP = -1 }

      it { expect(生き物.valid?).to eq false }
    end

    context 'MP == 0', issue: '#3' do
      before { 生き物.MP = 0 }

      it { expect(生き物.valid?).to eq true }
    end

    context 'MP == 0.1', issue: '#3' do
      before { 生き物.MP = 0.1 }

      it { expect(生き物.valid?).to eq true }
    end

    context 'MP == さいだいMP', issue: '#3' do
      before { 生き物.MP = 生き物.さいだいMP }

      it { expect(生き物.valid?).to eq true }
    end

    context 'MP > さいだいMP', issue: '#3' do
      before { 生き物.MP = 生き物.さいだいMP + 1 }

      it { expect(生き物.valid?).to eq false }
    end

    context 'MP == -1', issue: '#3' do
      before { 生き物.MP = -1 }

      it { expect(生き物.valid?).to eq false }
    end
  end
end
