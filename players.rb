# encoding: utf-8

require 'securerandom'

def find_team(name)
  yield PlayFutsal::Team.find_by_name(name)
end

$COUNT = 0
def add_player(team, first_name, last_name)
  user = PlayFutsal::User.create  email: "dummy#{$COUNT}@uminho.cup",
                                  first_name: first_name,
                                  last_name:  last_name,
                                  password: SecureRandom.hex(16),
                                  confirmed_at: Time.now
  user.confirm!
  user.save
  $COUNT = $COUNT + 1

  player = PlayFutsal::Athlete.create  user_id: user.id,
                                       team_id: team.id,
                                       sequence: team.athletes.count
  player.save!
end

# GRUPO A
find_team("Economia") do |team|
  add_player team, "José", "Luís Ferreira"
  #add_player team, "Wilson", "Santos"
  #add_player team, "Tiago", "Rodrigues"
  #add_player team, "Miguel", "Lopes"
  #add_player team, "Antonio", "Coelho"
  #add_player team, "Sérgio", "Gonçalves"
  #add_player team, "Ulisses", "Soares"
end

=begin
find_team("Los Apaches") do |team|
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
end

find_team("Borussia Doutromundo") do |team|
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
end



find_team("TroLEI FC") do |team|
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
end




find_team("") do |team|
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
end

find_team("") do |team|
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
end

find_team("") do |team|
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
end

find_team("") do |team|
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
end

find_team("") do |team|
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
end

find_team("") do |team|
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
end

find_team("") do |team|
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
end

find_team("") do |team|
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
end

find_team("") do |team|
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
end

find_team("") do |team|
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
end

find_team("") do |team|
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
end

find_team("") do |team|
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
end

find_team("") do |team|
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
  add_player_team, "", ""
end

=end
