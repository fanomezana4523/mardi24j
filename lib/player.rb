require "pry"
class Player
	attr_accessor :name,:life_point
	@@all_users = []
	def initialize(name)
	  	@name = name
	  	@life_point = 10
	  	@@all_users << self
	end
	def self.all
	  	@@all_users
	end
    def self.piontde_vie(life_point)
	  @@all_users.each do |player|
	    if player.life_point == 10
	        return player
	    end
	  end
        return false
    end
    def name
       return @name
    end

    def show_state
    	a = compute_domage
       puts"#{@name} a #{a} de vie" 
    end


    def gets_domage(point_domage)
          @life_point = @life_point-point_domage
         if @life_point <= 0
            puts "le joueur #{@name} a été tué "
         end 
    end

   def compute_domage
   	return rand(1..6)
   end

   def attacks(player) 
   	if a = compute_domage
   	   b = player.gets_domage(a)
    	puts "#{@name} attacks #{player.name} il lui infligé #{a} point de domage"
    else
    	puts"#{@name} a été tué "
   end
    
   end

           # binding.pry
            #puts ("end of file")
end