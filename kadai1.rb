class Pokemon
  attr_accessor :name, :attack, :hp

  def initialize(name, attack, hp)
    @name = name
    @attack = attack
    @hp = hp
  end

end

pikachu = Pokemon.new("ピカチュウ",3,30)
zenigame = Pokemon.new("ゼニガメ",6,50)

puts "*****************"
puts "戦闘開始#{pikachu.name}vs#{zenigame.name}"
puts "*****************"


zdamage = 0
pdamage = 0
if pikachu.attack > zenigame.attack then
  zdamage = pikachu.attack  #ゼニガメのダメージ
else
  pdamage = zenigame.attack #ピカチュウのダメージ
end

i = 1
loop do
  #ダメージ計算
  #攻撃力が低い方は０のまま
  pikachu.hp -=pdamage
  zenigame.hp -=zdamage

  puts "---------"
  puts "第#{i}戦闘"
  puts "---------"


  puts "#{pikachu.name}の残りHP: #{pikachu.hp}"
  puts "#{zenigame.name}の残りHP: #{zenigame.hp}"

#勝敗でのループ抜け
  if pikachu.hp <= 0 then
    sleep(2)
    puts "決着!!"
    puts "#{pikachu.name}の瀕死,#{zenigame.name}の勝利！！"
    break
  end

  if zenigame.hp <= 0 then
    sleep(2)
    puts "決着!!"
    puts "#{zenigame.name}の瀕死,#{pikachu.name}の勝利！！"
    break
  end
#1秒のインターバル

  sleep(1)
  i += 1

end
