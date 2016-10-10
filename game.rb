require_relative('guest')
require_relative('karaoke')
require_relative('room')
require_relative('song')

class Game

  def on
    puts "What's your name?"
    name = gets.chomp
    puts "Would you like to play karaoke? (y/n)"
    answer = gets.chop
    if answer == 'y'
      while true
        puts "What name does your karaoke have? "
        karaoke_name = gets.chomp
        karaoke = Karaoke.new(karaoke_name)
        puts karaoke
        break
      end
    else puts "Sorry to see you go, have a great day!!"
    end
  end
end

game = Game.new()
game.on

