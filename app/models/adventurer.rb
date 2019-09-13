# == Schema Information
#
# Table name: adventurers
#
#  id                      :bigint           not null, primary key
#  agility                 :integer          default(0), not null
#  avoidance_power         :integer          default(0), not null
#  concentration_power     :integer          default(0), not null
#  intelligence            :integer          default(0), not null
#  max_avoidance_power     :integer          default(0), not null
#  max_concentration_power :integer          default(0), not null
#  name                    :string(255)      not null
#  strength                :integer          default(0), not null
#  toughness               :integer          default(0), not null
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

# 冒険者
class Adventurer < ApplicationRecord
  validates :name, presence: true
end
