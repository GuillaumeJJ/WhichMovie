class Seance < ActiveRecord::Base
	attr_accessible :heure, :film_id, :cinema_id
	belongs_to :cinema
	belongs_to :film
	attr_accessible :heure, :cinema_id, :film_id
	belongs_to :cinema, :film
end
