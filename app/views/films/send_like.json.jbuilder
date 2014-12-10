json.extract! @like, :id, :user_name, :film

json.message "Bravo, tu viens de liker  #{@film.titre}"
json.other_likes @other_likes, :user_name
json.number @other_likes.length
