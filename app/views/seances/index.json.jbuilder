json.array!(@seances) do |seance|
  json.extract! seance, :id, :heure, :film_id, :cinema_id
  json.url seance_url(seance, format: :json)
end
