json.array!(@films) do |film|
  json.extract! film, :id, :titre, :realisateur, :acteurs, :BO, :synopsis, :datesortie, :affiche
  json.url film_url(film, format: :json)
end
