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
    モンスターの群れ.each do |モンス|
      メッセージ出力 "#{モンス.なまえ}が あらわれた！"
    end
  end

  def すばやさ降順でソート
    みなさん.sort_by(&:すばやさ).reverse
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

  def みなさん
    パーティーメンバー + モンスターの群れ
  end
end
