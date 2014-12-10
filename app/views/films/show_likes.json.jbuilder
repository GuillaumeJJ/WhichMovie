json.array!(@likes) do |like|
	json.extract! like :id, :user_name, :other_likes
end