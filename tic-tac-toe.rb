require_relative 'engine_tic_tac'

#choosing tipe of game
class Start
  def start
    while true
      print "Do you want to play 2 person game(1), or with computer(2):"
      @choose=gets.chop
      if @choose=="1" || @choose=="2"
        choose_game
        break
      end
      puts "You had choosen bad number of move"
    end
  end

  def choose_game
    if @choose=="1"
      Engine.new.running
    elsif @choose=="2"
      Engine.new.one_player_start
    end
  end
end

Start.new.start
