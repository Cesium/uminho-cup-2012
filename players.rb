# encoding: utf-8

def find_team(name)
  yield PlayFutsal::Team.find_by_name(name)
end

$COUNT = 0
def add_player(team, first_name, last_name)
  user = PlayFutsal::User.create  email: "dummy#{$COUNT}@uminho.cup",
                                  first_name: first_name,
                                  last_name:  last_name,
                                  confirmed_at: Time.now
  user.confirm!
  user.save

  player = PlayFutsal::Athlete.create user: user,
                                      sequence: team.athletes.count
end

find_team("Economia") do |team|
  add_player team, "José", "Luís Ferreira"
  #add_player team, 
end
