json.array!(@cinemas) do |cinema|
  json.extract! cinema, :id, :ville, :adresse, :seancehoraire
  json.url cinema_url(cinema, format: :json)
end
