class Film < ActiveRecord::Base
<<<<<<< Updated upstream
	attr_accessible :titre, :realisateur, :acteurs, :BO, :synopsis, :datesortie,:affiche
=======
	attr_accessible :
>>>>>>> Stashed changes
	has_many :seances
	has_many :likes
end
