    puts "1a"

class Player
  def hand
    puts "2a"
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
    puts "グー→ 0"
    puts "チョキ → 1"
    puts "パー → 2"
    puts "数字を入力してください"

    gets.chomp
  end
end
    puts "3a"

class Enemy
  def hand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
    puts "4a"
    number = rand(0..2)
    return number
  end
end
    puts "5a"

class Janken
  def pon(player_hand, enemy_hand)
    puts "6a"

    if player_hand != "0" && player_hand.to_i == 0
      puts "文字列を入力せずに、0～2の数字を入力してください。"
      return false  
    end
    player_hand = player_hand.to_i

    
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    result = (player_hand - enemy_hand + 3) % 3
    #if player_hand == 0 || player_hand == 1 || player_hand == 2 
    # puts ""
    #else 
    # puts "0～2の数字を入力してください。"
    #end
    if (player_hand != 0 && player_hand != 1) && player_hand != 2
      puts "0～2の数字を入力してください。"
    elsif result == 2 
      puts "相手は#{Choice[enemy_hand]}でした！勝ちです！"
    elsif result == 1 
      puts "相手は#{Choice[enemy_hand]}でした！負けです！"
    elsif result == 0
      puts "あいこです、もう一度！"
      player = Player.new
      enemy = Enemy.new
      janken = Janken.new
      # 下記の記述で、ジャンケンメソッドが起動される
      janken.pon(player.hand, enemy.hand)
    end
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる
  end
end

Choice = {0 => "グー", 1 => "チョキ", 2 => "パー"}

puts "7a"
player = Player.new
enemy = Enemy.new
janken = Janken.new
puts "8a"
# 下記の記述で、ジャンケンメソッドが起動される
janken.pon(player.hand, enemy.hand)
puts "9a"

#janken.pon(player.hand, enemy.hand)によりclass Janken開始
#引数player.handによりclass Player開始
#引数enemy.handによりclass Enemy開始
#class Jankenの中の処理が行われる