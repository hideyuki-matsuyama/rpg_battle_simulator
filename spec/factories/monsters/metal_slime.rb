FactoryBot.define do
  factory :メタルスライム, parent: :monster do
    なまえ { 'メタルスライム' }
    ちから { 39 }
    すばやさ { 115 }
    みのまもり { 999 }
    HP { 5 }
    MP { 12 }
    さいだいHP { 5 }
    さいだいMP { 12 }
  end
end
