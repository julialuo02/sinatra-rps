require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

def label_move(move_code)
  if move_code == 0
    "rock"
  elsif move_code == 1
    "paper"
  else
    "scissors"
  end
end

# Rock
get("/rock") do
  my_move = 0
  @my_move_text = label_move(my_move)
  
  opponent_move = rand(3)
  @opponent_move_text = label_move(opponent_move)

  if opponent_move == 1
    @result = 1
  elsif opponent_move == 0
    @result = -1
  else
    @result = 0
  end

  erb(:game)
end

# Paper
get("/paper") do
  my_move = 1
  @my_move_text = label_move(my_move)
  
  opponent_move = rand(3)
  @opponent_move_text = label_move(opponent_move)

  if opponent_move == 0
    @result = 0
  elsif opponent_move == 2
    @result = 1
  else
    @result = -1
  end

  erb(:game)
end

# Scissors
get("/scissors") do
  my_move = 2
  @my_move_text = label_move(my_move)
  
  opponent_move = rand(3)
  @opponent_move_text = label_move(opponent_move)

  if opponent_move == 0
    @result = 1
  elsif opponent_move == 1
    @result = 0
  else
    @result = -1
  end

  erb(:game)
end
