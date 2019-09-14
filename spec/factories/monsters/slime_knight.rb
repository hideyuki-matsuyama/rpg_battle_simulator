FactoryBot.define do
  factory :スライムナイト, parent: :monster do
    なまえ { 'スライムナイト' }
    ちから { 35 }
    すばやさ { 12 }
    みのまもり { 30 }
    HP { 28 }
    MP { 6 }
    さいだいHP { 28 }
    さいだいMP { 6 }
  end
end
