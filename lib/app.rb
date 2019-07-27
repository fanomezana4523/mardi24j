require "pry"
require "bundler"
require_relative "lib/game"
require_relative "lib/player"
Bundler.require
player1= Player.new("josiane")
player2= Player.new("josé")
puts "voici l'etat de nos joueurs :\n"
player1.show_state
player2.show_state
#binding.pry
#puts"end of file"
puts"Passons à la phase d'attaque\n"

player1.attacks(player2)
player2.attacks(player1)
