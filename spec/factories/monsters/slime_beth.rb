FactoryBot.define do
  factory :スライムベス, parent: :monster do
    なまえ { 'スライムベス' }
    ちから { 24 }
    すばやさ { 8 }
    みのまもり { 20 }
    HP { 12 }
    MP { 0 }
    さいだいHP { 12 }
    さいだいMP { 0 }
  end
end
