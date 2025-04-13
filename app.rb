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
    @theyplayed = "rock"
  elsif @rps==2
    @outcome = "lost"
    @theyplayed = "paper"
  else
    @outcome = "won"
    @theyplayed = "scissors"
  end
  erb(:rock)
end

get("/paper") do
  @rps = rand(1..3)
  # rock = 1, paper=2, scissors = 3
  if @rps==1
    @outcome = "won"
    @theyplayed ='rock'
  elsif @rps==2
    @outcome = "tied"
    @theyplayed = 'paper'
  else
    @outcome = "lost"
    @theyplayed = "scissors"
  end
  erb(:paper)
end

get("/scissors") do
  @rps = rand(1..3)
  # rock = 1, paper=2, scissors = 3
  if @rps==1
    @outcome = "lost"
    @theyplayed ='rock'
  elsif @rps==2
    @outcome = "won"
    @theyplayed = 'paper'
  else
    @outcome = "tied"
    @theyplayed = "scissors"
  end
  erb(:scissors)
end
