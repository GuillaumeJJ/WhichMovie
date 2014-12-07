class Cinema < ActiveRecord::Base
<<<<<<< Updated upstream
	attr_accessible :ville, :adresse, :seancehoraire, :nom
=======
	attr_accessible :
>>>>>>> Stashed changes
	has_many :seances
end
