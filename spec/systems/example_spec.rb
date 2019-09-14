require 'rails_helper'

describe 'ようこそ', type: :system do
  before { visit root_path }

  it '#index' do
    expect(page).to have_content 'よぐきたのぉ〜'
  end
end
