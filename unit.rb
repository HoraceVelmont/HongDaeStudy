class Unit
  attr_accessor :unit_name, :attack_damage, :health_point
  def initialize(unit_name, attack_damage, health_point)
    @unit_name = unit_name
    @attack_damage = attack_damage
    @health_point = health_point
  end

  def punch_other(enemy)
    get_damage(enemy)
    if(enemy.health_point <0)
      enemy.health_point = 0
    end
    print '--> ',enemy.unit_name, "\'s Left HP is ", enemy.health_point, "\n"
  end

  def get_damage(enemy)
    enemy.health_point -= @attack_damage
    print @unit_name, ' gave ', enemy.unit_name, ' ', @attack_damage, " damage\n"
  end
end

class Heroine < Unit
  def initialize(unit_name, health_point, attack_damage)
    @unit_name = unit_name
    @attack_damage = attack_damage
    @health_point = health_point
    print @unit_name, "\'s health point is ",@health_point, "\n"
  end

  def get_damage(enemy)
    @lucky_damage = Random.rand(0...5)
    enemy.health_point -= (@attack_damage+@lucky_damage)
    print @unit_name, ' gave ', enemy.unit_name, ' (', @attack_damage,"+", @lucky_damage, ") damage\n"
  end
end

class Villain < Unit
  def initialize(unit_name, health_point, attack_damage)
    @unit_name = unit_name
    @attack_damage = attack_damage
    @health_point = health_point
    print @unit_name, "\'s health point is ",@health_point, "\n"
  end
end


