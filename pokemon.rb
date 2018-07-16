class Pokemon

    attr_accessor :name
    attr_accessor :attack
    attr_accessor :hp

    def initialize(name, attack, hp)
        @name = name
        @attack = attack
        @hp = hp
    end

end

pikachu = Pokemon.new("pikachu", 13, 30)
zenigame = Pokemon.new("zenigame", 6, 50)

pika_a = pikachu.attack
zeni_a = zenigame.attack
pika_h = pikachu.hp
zeni_h = zenigame.hp

i = 0
loop do

    i += 1

    if pika_a < zeni_a
        damage = zeni_a
        pika_h -= damage
        puts "-----"
        puts "第#{i}戦"
        puts "-----"
        puts "ピカチュウの残りHP: #{pika_h}"
        puts "ゼニガメの残りHP: #{zeni_h}"
    else
        damage = pika_a
        zeni_h -= damage
        puts "-----"
        puts "第#{i}戦"
        puts "-----"
        puts "ピカチュウの残りHP: #{pika_h}"
        puts "ゼニガメの残りHP: #{zeni_h}"
    end

    sleep(2)


    if pika_h < 0
        puts "***************"
        puts "決着！！！"
        puts "***************"
        puts "ピカチュウ瀕死、ゼニガメの勝利！！"
        break
    elsif zeni_h < 0
        puts "***************"
        puts "決着！！！"
        puts "***************"
        puts "ゼニガメ瀕死、ピカチュウの勝利！！"
        break
    end

end
