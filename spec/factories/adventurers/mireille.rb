FactoryBot.define do
  factory :ミレーユ, parent: :adventurer do
    なまえ { 'ミレーユ' }
    trait :レベル20 do
      ちから { 42 }
      すばやさ { 78 }
      みのまもり { 45 }
      かしこさ { 77 }
      HP { 130 }
      MP { 95 }
      さいだいHP { 130 }
      さいだいMP { 95 }
    end
    trait :レベル99 do
      ちから { 300 }
      すばやさ { 450 }
      みのまもり { 200 }
      かしこさ { 410 }
      HP { 700 }
      MP { 800 }
      さいだいHP { 700 }
      さいだいMP { 800 }
    end
  end
end
