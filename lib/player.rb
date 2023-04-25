class Player
    attr_accessor :name, :life_points

    def initialize(name)
        @name = name.to_s
        @life_points = 10
    end

    def show_state
        puts "#{@name} a #{@life_points} points de vie"
    end

    def gets_damage(damage)
        @life_points = @life_points - damage
        if @life_points <= 0
            puts "#{@name}  a été tué!"
        end
    end

    def attacks(player)
        puts "#{@name} attaque le joueur #{player.name}" 
        result_attack = compute_damage
        puts "Il lui inflige #{result_attack} points de vie"
        player.gets_damage(result_attack)
    end

    def compute_damage
        return rand(1..6)
     end
end