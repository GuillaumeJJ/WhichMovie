class Cinema < ActiveRecord::Base
	attr_accessible :ville, :adresse, :seancehoraire, :nom, :film_id
	belongs_to :film
end
