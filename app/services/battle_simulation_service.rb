# 戦闘
class BattleSimulationService < BaseService
  def call
    ActiveRecord::Base.transaction do
      エンカウント
      すばやさ降順でソート.each do |する子|
        される子 = (すばやさ降順でソート - パーティーメンバー - [する子]).sample
        こうげき(する子, される子)
        する子.save!
        される子.save!
      end
    rescue ActiveRecord::RecordInvalid => e
      Rails.logger.fatal "あぼんした！: #{e.record.errors.full_messages}"
      raise
    end
  end

  private

  def エンカウント
    現れたモンスターたち.each do |モンス|
      メッセージ出力 "#{モンス.なまえ}が あらわれた！"
    end
  end

  def すばやさ降順でソート
    みなさん.生きている.素早い順
  end

  def こうげき(する子, される子)
    AttackService.new(する子, される子).call
  end

  def パーティーメンバー
    @パーティーメンバー ||= Adventurer.冒険者たち.生きている
  end

  def 現れたモンスターたち
    @現れたモンスターたち ||= Monster.この辺に生息している
  end

  def みなさん
    Creature.where(id: パーティーメンバー.ids + 現れたモンスターたち.ids)
  end
end
