FactoryBot.define do
  factory :ハッサン, parent: :adventurer do
    なまえ { 'ハッサン' }
    trait :レベル20 do
      ちから { 83 }
      すばやさ { 55 }
      みのまもり { 48 }
      かしこさ { 28 }
      HP { 175 }
      MP { 56 }
      さいだいHP { 175 }
      さいだいMP { 56 }
    end
    trait :レベル99 do
      ちから { 400 }
      すばやさ { 180 }
      みのまもり { 220 }
      かしこさ { 330 }
      HP { 900 }
      MP { 400 }
      さいだいHP { 900 }
      さいだいMP { 400 }
    end
  end
end
