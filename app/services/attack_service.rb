# こうげき
class AttackService
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
    # FIXME: 🐛負の値になると敵にも優しくなります
    する子.こうげき力 / 2 - される子.しゅび力 / 4
  end

  def ぬわーーっっ！！
    される子.HP = される子.HP - 与えるダメージ
  end
end
