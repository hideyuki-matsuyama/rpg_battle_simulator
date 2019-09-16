FactoryBot.define do
  factory :ダークドレアム, parent: :monster do
    なまえ { 'ダークドレアム' }
    ちから { 410 }
    すばやさ { 250 }
    みのまもり { 300 }
    HP { 13_000 }
    MP { 999 }
    さいだいHP { 13_000 }
    さいだいMP { 999 }
  end
end
