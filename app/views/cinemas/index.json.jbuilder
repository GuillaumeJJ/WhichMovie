json.array!(@cinemas) do |cinema|
  json.extract! cinema, :id, :ville, :adresse, :seancehoraire, :nom, :film_id
  json.url cinema_url(cinema, format: :json)
end
