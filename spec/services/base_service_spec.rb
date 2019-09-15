require 'rails_helper'

RSpec.describe BaseService, type: :service, issue: '#10' do
  describe '#call' do
    subject(:サービス実行) { described_class.new.call }

    it { expect { サービス実行 }.to raise_error(NotImplementedError) }
  end

  describe '#メッセージ出力' do
    subject(:メッセージ出力) { described_class.new.send(:メッセージ出力, 文言) }

    let(:文言) { 'いやー さがしましたよ。' }

    it '引数の文字列がinfoレベルでログ出力されること' do
      expect(Rails).to receive_message_chain(:logger, :info).with(no_args).with(文言)
      メッセージ出力
    end
  end
end
