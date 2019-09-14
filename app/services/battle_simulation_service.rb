# 戦闘
class BattleSimulationService
  def call
    素早さ降順でソート.each do |する子|
      される子 = (素早さ降順でソート - パーティーメンバー - [する子]).sample
      こうげき(する子, される子)
      する子.save
      される子.save
    end
  end

  private

  def 素早さ降順でソート
    (パーティーメンバー + モンスターの群れ).sort_by(&:agility).reverse
  end

  def こうげき(する子, される子)
    AttackService.new(する子, される子).call
  end

  def パーティーメンバー
    @パーティーメンバー ||= Adventurer.all
  end

  def モンスターの群れ
    @モンスターの群れ ||= Monster.all
  end
end
