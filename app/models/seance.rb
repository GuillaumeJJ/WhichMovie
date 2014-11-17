class Seance < ActiveRecord::Base
	attr_accessible :heure, :film_id, :cinema_id
	belongs_to :cinema
	belongs_to :film
end
