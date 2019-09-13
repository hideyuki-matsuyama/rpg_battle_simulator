RSpec.shared_examples '基本パラメータ' do
  describe 'validates' do
    it 'なまえは必須' do
      生き物.なまえ = ''
      expect(生き物.valid?).to eq false
    end
  end

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
end
