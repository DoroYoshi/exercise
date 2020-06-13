class Brave
  attr_accessor :physical, :offense, :diffense
  def initialize(physical: ,offense: ,diffense:)
    @physical = physical
    @offense = offense
    @diffense = diffense
  end

  def attack_brave(monster)
    # 新しいmonsterの体力=monsterの体力-(braveの攻撃力-monsterの防御力)
    monster.physical = monster.physical.to_i - (@offense.to_i - monster.diffense.to_i)
  end
end

class Monster
  attr_accessor :physical, :offense, :diffense
  def initialize(physical: ,offense: ,diffense:)
    @physical = physical
    @offense = offense
    @diffense = diffense
  end

  def attack_monster(brave)
    # 新しいbraveの体力=braveの体力-(monsterの攻撃力-braveの防御力)
    brave.physical = brave.physical.to_i - (@offense.to_i - brave.diffense.to_i)
  end
end

brave = Brave.new(physical: 100, offense: 15, diffense: 10)
monster = Monster.new(physical: 110, offense: 20, diffense: 5)

loop do
  puts "-----------------------"
  if monster.physical.to_i > 0
    p brave.attack_brave(monster)
  else
    puts "monsterを倒しました！"
    break
  end
  if brave.physical.to_i > 0
    p monster.attack_monster(brave)
  else
    puts "monsterにやられました。。。。"
    break
  end
end
