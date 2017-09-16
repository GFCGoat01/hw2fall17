class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  raise NoSuchStrategyError unless game[0][1].upcase.include?("R") || game[0][1].upcase.include?("P") || game[0][1].upcase.include?("S")
  raise NoSuchStrategyError unless game[1][1].upcase.include?("R") || game[1][1].upcase.include?("P") || game[1][1].upcase.include?("S")
  #Rock Case
  if game[0][1].upcase == 'R'
    if game[1][1].upcase == 'R' || game[1][1].upcase == 'S'
      return game[0]
    end
    if game[1][1].upcase == 'P'
      return game[1]
    end
  end
  #Paper Case
  if game[0][1].upcase == 'P'
    if game[1][1].upcase == 'P' || game[1][1].upcase == 'R'
      return game[0]
    end
    if game[1][1].upcase == 'S'
      return game[1]
    end
  end
  #Scissor Case
  if game[0][1].upcase == 'S'
    if game[1][1].upcase == 'S' || game[1][1].upcase == 'P'
      return game[0]
    end
    if game[1][1].upcase == 'R'
      return game[1]
    end
  end
  
  
    
end

def rps_tournament_winner(tournament)
  
  if tournament[0][0].is_a?(String)
    return rps_game_winner(tournament)
  end
  return rps_game_winner([rps_tournament_winner(tournament[0]),rps_tournament_winner(tournament[1])])
end
