
class Game
  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[1]
  end

  def attack(player)
    player.receive_damage
  end
end
