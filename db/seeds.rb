# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Film.create(
	titre: "Samba",
	realisateur: "Eric Toledano, Olivier Nakache",
	acteurs: "Omar Sy, Charlotte Gainsbourg, Tahar Rahim",
	BO: "//www.youtube.com/embed/-FsspoYgclE",
	synopsis:"Samba, sénégalais en France depuis 10 ans, collectionne les petits boulots ; Alice est une cadre supérieure épuisée par un burn out. Lui essaye par tous les moyens d'obtenir ses papiers, alors qu'elle tente de se reconstruire par le bénévolat dans une association." ,
	datesortie:"2014-10-15",
	)