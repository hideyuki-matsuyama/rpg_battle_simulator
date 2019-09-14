FactoryBot.define do
  factory :チャモロ, parent: :adventurer do
    なまえ { 'チャモロ' }
    trait :レベル20 do
      ちから { 51 }
      すばやさ { 66 }
      みのまもり { 56 }
      かしこさ { 60 }
      HP { 140 }
      MP { 115 }
      さいだいHP { 140 }
      さいだいMP { 115 }
    end
    trait :レベル99 do
      ちから { 310 }
      すばやさ { 350 }
      みのまもり { 240 }
      かしこさ { 450 }
      HP { 750 }
      MP { 850 }
      さいだいHP { 750 }
      さいだいMP { 850 }
    end
  end
end
