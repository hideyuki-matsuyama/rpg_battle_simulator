# == Schema Information
#
# Table name: creatures
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
#  type                    :string(255)      not null
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#
# Indexes
#
#  index_creatures_on_type  (type)
#

# 冒険者
class Adventurer < Creature
  scope :冒険者たち, -> { where('1 = 1') }

  def いてっ！(被ダメ値)
    super
    raise Status::URRRAAHH, "#{なまえ}は しんでしまった！" if しぼんぬ？
  end
end
