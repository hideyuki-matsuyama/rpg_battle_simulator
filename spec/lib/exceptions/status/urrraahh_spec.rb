require 'rails_helper'

RSpec.describe Status::URRRAAHH, type: :library do
  describe '#ぬわーーっっ！！' do
    subject(:ぬわス) { described_class.new(セリフ).send(:ぬわーーっっ！！) }

    let(:セリフ) { 'パパーーっっ！！' }

    it 'StandardError#message が呼ばれる' do
      expect_any_instance_of(StandardError).to receive(:message).once
      ぬわス
    end

    it { is_expected.to eq セリフ }
  end
end
