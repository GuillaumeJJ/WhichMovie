class Film < ActiveRecord::Base
	attr_accessible :titre, :realisateur, :acteurs, :BO, :synopsis, :datesortie, :affiche
	has_many :cinemas
end
