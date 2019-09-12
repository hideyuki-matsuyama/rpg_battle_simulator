# 冒険者
class Adventurer < ApplicationRecord
  validates :name, presence: true
end
