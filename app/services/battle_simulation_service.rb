# 戦闘
class BattleSimulationService < BaseService
  def call
    ActiveRecord::Base.transaction do
      エンカウント
      みなさん.生きている.素早い順.each do |する子|
        される子 = さあて、どいつからかたづけてやるかな・・・(する子)
        こうげき(する子, される子)
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

  def さあて、どいつからかたづけてやるかな・・・(する子)
    敵たち = みなさん.生きている.where.not(type: する子.class)
    ワンキル対象 = 敵たち.order(HP: :desc, id: :asc).detect do |敵|
      敵.HP <= AttackService.new(する子, 敵).send(:与えるダメージ)
    end
    ワンキル対象 || 敵たち.order(:HP, :id).first
  end

  def こうげき(する子, される子)
    AttackService.new(する子, される子).call
  end

  def みなさん
    Creature.where(id: パーティーメンバー.ids + 現れたモンスターたち.ids)
  end

  def パーティーメンバー
    @パーティーメンバー ||= Adventurer.冒険者たち.生きている
  end

  def 現れたモンスターたち
    @現れたモンスターたち ||= Monster.この辺に生息している
  end
end
