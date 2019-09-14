require 'rails_helper'

RSpec.describe ApplicationHelper, type: :module do
  let(:helper) { Struct.new(:helper) { extend ApplicationHelper } }

  describe '.title' do
    subject(:ページタイトル) { helper.title }

    it { is_expected.to eq 'ククク・・・' }
  end
end
