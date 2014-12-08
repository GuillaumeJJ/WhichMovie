class Like < ActiveRecord::Base
  belongs_to :film
  attr_accessible :user_name
end