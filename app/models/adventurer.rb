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
  alias_attribute :なまえ, :name
  alias_attribute :ちから, :strength
  alias_attribute :すばやさ, :agility
  alias_attribute :みのまもり, :toughness
  alias_attribute :かしこさ, :intelligence
  alias_attribute :HP, :avoidance_power
  alias_attribute :MP, :concentration_power
  alias_attribute :さいだいHP, :max_avoidance_power
  alias_attribute :さいだいMP, :max_concentration_power

  validates :なまえ, presence: true

  def こうげき力
    ちから
  end

  def しゅび力
    みのまもり
  end
end
