# encoding: utf-8

require 'securerandom'


def find_team(name)
  yield PlayFutsal::Team.find_or_create_by_name(name)
end

def find_group(group)
  PlayFutsal::Group.find_or_create_by_name("Grupo #{group}")
end

def find_user(team, first_name, last_name)
  user = PlayFutsal::User.find_by_first_name_and_last_name(first_name, last_name)
end

$COUNT = 1
def add_player(team, first_name, last_name)
  return if find_user(team, first_name, last_name)
  user = PlayFutsal::User.create  email: "dummy#{$COUNT}@uminho.cup",
                                  first_name: first_name,
                                  last_name:  last_name,
                                  password: SecureRandom.hex(16),
                                  confirmed_at: Time.now
  user.confirm!
  user.save
  $COUNT = $COUNT + 1

  puts user.id

  player = PlayFutsal::Athlete.create  user_id: user.id,
                                       team_id: team.id,
                                       number: team.athletes.count
  player.save!
end

# GRUPO A
find_team("Los Apaches") do |team|
  team.group = find_group('A')
  add_player team, "André", "Macedo"
  add_player team, "Ruben", "Malheiro "
  add_player team, "Helder", "Gonçalves"
  add_player team, "Emanuel", "Alves"
  add_player team, "José", "Araújo"
  add_player team, "José", "Loureiro"
  add_player team, "Miguel", "Lopes"
end

find_team("Rossas FC") do |team|
  team.group = find_group('A')
  add_player team, "António", "Fernandes"
  add_player team, "Pedro", "Oliveira"
  add_player team, "João", "Meireles"
  add_player team, "Pedro", "Mota"
  add_player team, "João", "César"
  add_player team, "Mário", "Azevedo"
  add_player team, "Ricardo", "Costa"
  add_player team, "Bruno", "Correia"
end

find_team("Borussia Doutromundo") do |team|
  team.group = find_group('A')
  # 10
  add_player team, "Joel", "Tiago Ribeiro"
  add_player team, "Ivo", "Silva"
  add_player team, "Ricardo", "Pires"
  add_player team, "Jorge", "Pinheiro"
  add_player team, "Vinício", "Oliveira"
  add_player team, "Tiago", "Augusto"
  add_player team, "Rui", "Oliveira"
  add_player team, "Adão", "Rodrigues"
end

find_team("Os Mestiços") do |team|
  team.group = find_group('A')
  # 10
  # DONE
  add_player team, "Marco",  "António Freitas"
  add_player team, "Artur",  "Tiago Oliveira"
  add_player team, "Filipe",  "Enes Ferreira"
  add_player team, "Ivo",  "César Mestiço"
  add_player team, "João",  "António Ferreira"
  add_player team, "João",  "Fernando Louro"
  add_player team, "Tiago",  "André Dias"
  add_player team, "Jaime",  "Almeida Oliveira"
  add_player team, "Hugo", "Moreira"
  add_player team, "João", "Artur da Silva"
end

# GRUPO B

find_team("Sei Lá") do |team|
  team.group = find_group('B')
  add_player team, "João", "Cruz"
  add_player team, "Tiago", "Ferreira"
  add_player team, "Hélder", "Afonso"
  add_player team, "Fábio", "Fernandes"
  add_player team, "Jorge", "Ferreira"
  add_player team, "Tiago", "Moreira"
  add_player team, "João", "Esteves"
  add_player team, "Luís", "Barreiro"
  add_player team, "Avelino", "P."
  add_player team, "Ricador", "B."
end

find_team("Pollypockets") do |team|
  team.group = find_group('B')
  # 10
  add_player team, "Hélio", "Costa"
  add_player team, "Bruno", "Oliveira"
  add_player team, "António", "Sousa"
  add_player team, "Daniel", "Dias"
  add_player team, "Marcos", "Esteves"
  add_player team, "Manuel", "Pereira"
  add_player team, "Stefano", "Araújo"
  add_player team, "Dany", "Oliveira"
  add_player team, "José", "Rodrigues"
end

find_team("Direito") do |team|
  team.group = find_group('B')
  # 10
  # DONE
  add_player team, "Rafael", "Ribeiro Santos"
  add_player team, "Hélder", "Azevedo e Silva"
  add_player team, "José", "Pedro Jesus Costinha"
  add_player team, "André", "Lomba Caetano"
  add_player team, "André", "Gonçalo Vasques Sá"
  add_player team, "Luís", "Rogerio gonçalves Malheiro"
  add_player team, "João", "Nuno Barros"
  add_player team, "Miguel", "de Sousa Martins"
  add_player team, "José", "Luís Fernandes da Cunha"
  add_player team, "Mário", "Almeida"
end

find_team("Economia") do |team|
  team.group = find_group('B')
  # 10
  add_player team, "José", "Luís Ferreira"
  add_player team, "Wilson", "Santos"
  add_player team, "Tiago", "Rodrigues"
  add_player team, "Miguel", "Lopes"
  add_player team, "Antonio", "Coelho"
  add_player team, "Sérgio", "Gonçalves"
  add_player team, "Ulisses", "Soares"
  add_player team, "Alexandre", "Costa"
  add_player team, "Luís", "Faria"
end

# GRUPO C

find_team("bestas de LEI") do |team|
  team.group = find_group('C')
  # 10
  # DONE
  add_player team, "Fernando", "Azevedo"
  add_player team, "Rafael", "Morais"
  add_player team, "Daniel", "Rodrigues"
  add_player team, "Gil", "Azevedo"
  add_player team, "André", "Geraldes"
  add_player team, "Pedro", "Ribeiro"
  add_player team, "Pedro", "Carvalho"
  add_player team, "Xavier", "Francisco"
  add_player team, "Renato", "Ribeiro"
  add_player team, "João", "Carlos"
end

find_team("Centro de Emprego") do |team|
  team.group = find_group('C')
  # 10
  # DONE
  add_player team, "Duarte", "Nuno Martins da Cunha Oliveira"
  add_player team, "Francisco", "Manuel Pereira Antunez"
  add_player team, "André", "Vieira Carvalho"
  add_player team, "Gonçalo", "Jorge Martins Rocha Pimenta"
  add_player team, "Carlos", "Miguel Ferreira Vaz"
  add_player team, "António", "Ricardo Neto da Silva"
  add_player team, "Sérgio", "André Ferreira Almeida"
  add_player team, "Carlos", "Alberto Rodrigues Pizarro"
  add_player team, "João", "André Cerdeira Lopes de Carvalho"
  add_player team, "Bruno", "Filipe Brito Azevedo"
end

find_team("Randomly United") do |team|
  team.group = find_group('C')
  # 8
  # DONE
  add_player team, "Guilherme", "Rodrigues"
  add_player team, "Daniel", "Murta"
  add_player team, "Alexandre", "Silva"
  add_player team, "Tiago", "Carvalho"
  add_player team, "Tiago", "Carção"
  add_player team, "João", "Silva"
  add_player team, "Vitor", "Silva"
  add_player team, "Nelson", "Guimarães"
end

find_team("Los Melones") do |team|
  team.group = find_group('C')
  # 10
  # Done
  add_player team, "Miguel", "Angel Alfaro Lavin"
  add_player team, "Fernando", "Manuel Acedo Triviño"
  add_player team, "Angel", "Bolado Campo"
  add_player team, "Carlos", "Carrancos Benitez"
  add_player team, "Francisco", "Arroyo Masa"
  add_player team, "Fermin", "Navarrete"
  add_player team, "Antonio", "Garcia Perez"
  add_player team, "Lucas", "de Oliveira Moura Rodrigues"
  add_player team, "Jorge", "Torró Moreno-Arrones"
  add_player team, "Javier", "Perez Alonso"
end

# GRUPO D

find_team("Rangers de Lamego") do |team|
  add_player team, "Cedric", "Pimenta"
  add_player team, "Ricardo", "Santos"
  add_player team, "Milton", "Nunes"
  add_player team, "Nuno", "de Carvalho"
  add_player team, "Miguel", "Pinto da Costa"
  add_player team, "André", "Pimenta"
  add_player team, "Pedro", "Duarte"
  add_player team, "Marco", "Ribeiro"
  add_player team, "Mário", "Leite"
  add_player team, "Serafim", "Pinto"
end

find_team("TroLEI FC") do |team|
  team.group = find_group('D')
  # 9
  # Done
  add_player team, "José", "Marcos Ribeiro Carvalho"
  add_player team, "Duarte", "Cunha da Silva Moças"
  add_player team, "David", "António Cardoso Moreira"
  add_player team, "Sérgio", "Manuel Pereira Simões"
  add_player team, "Mário", " elson Araújo Santos"
  add_player team, "Ricardo", "Manuel da Silva Campos"
  add_player team, "João", "Pedro Pinto Póvoa"
  add_player team, "André", "Daniel Freitas Ferreira"
  add_player team, "Bruno", "Freitas da Silva"
  add_player team, "Bruno", "Moura"
end

find_team("Ginha Team") do |team|
  team.group = find_group('D')
  # 8
  # DONE
  add_player team, "João", "Pedro Vaz Costa"
  add_player team, "Rui", "Filipe Ribeiro Santos"
  add_player team, "Sérgio", "Manuel Oliveira Gonçalves"
  add_player team, "João", "Pedro Montenegro Soares"
  add_player team, "Agostinho", "Manuel Oliveira Gonçalves"
  add_player team, "Daniel", "Soares"
  add_player team, "Daniel", "Oliveira"
  add_player team, "João", "Araújo"
  add_player team, "Diogo", "Rodrigues"
end

find_team("EGSI") do |team|
  team.group = find_group('D')
  # 6
  # DONE
  add_player team, "Danilo", "Santos"
  add_player team, "Daniel", "Dias" 
  add_player team, "João", "Silva"
  add_player team, "Nuno", "Silva"
  add_player team, "Tiago", "Mota"
  add_player team, "Carlos", "Correia"
  add_player team, "João", "Alves"
end