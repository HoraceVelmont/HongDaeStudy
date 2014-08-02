load 'unit.rb'
class Battle
  def fight(attacker, defender)
    @attacker = attacker
    @defender = defender
    until(@attacker.health_point ==0 || @defender.health_point ==0)
      @attacker.punch_other(@defender)
      swap(@attacker,@defender)
    end
    check_winner(@attacker, @defender)
  end

  def swap(attacker,defender)
    @temp = attacker
    @attacker = defender
    @defender = @temp
  end

  def check_winner(attacker, defender)
    if attacker.health_point==0
      print 'Winner is ', defender.unit_name, "!\n"
    elsif defender.health_point==0
      print 'Winner is ', attacker.unit_name, "!\n"
    else
      print "Battle Error\n"
    end
  end
end


songoku = Heroine.new('Songoku', 30, 7)
villain = Villain.new('Villain', 50, 5)
puts ("============Battle Bigins==============")
battleField = Battle.new
battleField.fight(songoku, villain)
