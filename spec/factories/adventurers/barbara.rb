FactoryBot.define do
  factory :バーバラ, parent: :adventurer do
    なまえ { 'バーバラ' }
    trait :レベル20 do
      ちから { 37 }
      すばやさ { 62 }
      みのまもり { 35 }
      かしこさ { 65 }
      HP { 110 }
      MP { 130 }
      さいだいHP { 110 }
      さいだいMP { 130 }
    end
    trait :レベル99 do
      ちから { 280 }
      すばやさ { 400 }
      みのまもり { 170 }
      かしこさ { 420 }
      HP { 650 }
      MP { 990 }
      さいだいHP { 650 }
      さいだいMP { 990 }
    end
  end
end
