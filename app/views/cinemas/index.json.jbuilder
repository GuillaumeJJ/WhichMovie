json.array!(@cinemas) do |cinema|
  json.extract! cinema, :id, :ville, :adresse, :seancehoraire, :nom
  json.url cinema_url(cinema, format: :json)
end
