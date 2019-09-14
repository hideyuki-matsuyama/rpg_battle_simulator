FactoryBot.define do
  factory :テリー, parent: :adventurer do
    なまえ { 'テリー' }
    trait :レベル28 do
      ちから { 86 }
      すばやさ { 115 }
      みのまもり { 59 }
      かしこさ { 83 }
      HP { 226 }
      MP { 86 }
      さいだいHP { 226 }
      さいだいMP { 86 }
    end
    trait :レベル99 do
      ちから { 330 }
      すばやさ { 250 }
      みのまもり { 190 }
      かしこさ { 300 }
      HP { 750 }
      MP { 600 }
      さいだいHP { 750 }
      さいだいMP { 600 }
    end
  end
end
