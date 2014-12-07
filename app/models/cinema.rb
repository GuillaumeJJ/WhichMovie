class Cinema < ActiveRecord::Base
	attr_accessible :ville, :adresse, :seancehoraire, :nom
	has_many :seances
end
