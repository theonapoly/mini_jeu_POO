require 'bundler'
Bundler.require

# require_relative 'lib/game'
require_relative 'lib/player'

puts "Orchestrons un combat !"
player1 = Player.new("Josiane")
player2 = Player.new("José")

puts "Voici l'état de chaque joueur:"
puts player1.show_state
puts player2.show_state
puts "\n"

puts "Passons à la phase d'attaque"
puts "\n"
while player1.life_points > 0 && player2.life_points > 0 #Tant que la vie du joueur 1 est supérieur à 0 et que la vie du joueur 2 est supérieur à 0 fait :

puts "Voici l'état de chaque joueur:"
puts player1.show_state # Montre la vie du joueur 1
puts player2.show_state # Montre la vie du joueur 2
puts "\n"

puts player1.attacks(player2)
break if player2.life_points <=0 # Stop la boucle si la vie du joueur 2 est inférieur ou égal à 0

puts player2.attacks(player1)
break if player1.life_points <=0 # Stop la boucle si la vie du joueur 1 est inférieur ou égal à 0
puts "\n"

end

puts "Le combat est terminé !"
if player1.life_points <=0 # si le joueur 1 a ses point de vie inférieur ou égal à 0 fait :
    puts "José à gagné !"

elsif player2.life_points <=0 # si le joueur 2 a ses point de vie inférieur ou égal à 0 fait :
    puts "Josiane à gagné !"
end
    



binding.pry