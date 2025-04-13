require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to Rock Paper Scissors!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/rock") do
  @rps = rand(1..3)
  # rock = 1, paper=2, scissors = 3
  if @rps==1
    @outcome = "tied"
  elsif @rps==2
    @outcome = "lost"
  else
    @outcome = "won"
  end
  erb(:rock)
end

get("/paper") do
  @rps = rand(1..3)
  # rock = 1, paper=2, scissors = 3
  if @rps==1
    @outcome = "won"
  elsif @rps==2
    @outcome = "tied"
  else
    @outcome = "lost"
  end
  erb(:paper)
end

get("/scissors") do
  @rps = rand(1..3)
  # rock = 1, paper=2, scissors = 3
  if @rps==1
    @outcome = "lost"
  elsif @rps==2
    @outcome = "won"
  else
    @outcome = "tied"
  end
  erb(:scissors)
end
