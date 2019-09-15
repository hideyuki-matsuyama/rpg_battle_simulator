# こうげき
class AttackService < BaseService
  attr_accessor :する子, :される子

  def call
    ぬわーーっっ！！
  end

  def initialize(する子, される子)
    @する子 = する子
    @される子 = される子
  end

  def self.ヌワス
    'パパーーっっ！！'
  end

  private

  def 与えるダメージ
    与ダメ = する子.こうげき力 / 2 - される子.しゅび力 / 4
    与ダメ.positive? ? 与ダメ : 0
  end

  def ぬわーーっっ！！
    メッセージ出力 "#{する子.なまえ}の こうげき！"
    if 与えるダメージ.zero?
      メッセージ出力 "#{される子.なまえ}に ダメージを あたえられない！"
    else
      メッセージ出力 "#{される子.なまえ}に #{与えるダメージ}の ダメージ！！"
    end
    される子.HP = される子.HP - 与えるダメージ
  end
end
