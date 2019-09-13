# == Schema Information
#
# Table name: monsters
#
#  id                :bigint           not null, primary key
#  agility           :integer          default(0), not null
#  avoidance         :integer          default(0), not null
#  concentration     :integer          default(0), not null
#  intelligence      :integer          default(0), not null
#  max_avoidance     :integer          default(0), not null
#  max_concentration :integer          default(0), not null
#  name              :string(255)      not null
#  strength          :integer          default(0), not null
#  toughness         :integer          default(0), not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'rails_helper'

RSpec.describe Monster, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
