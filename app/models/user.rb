class User < ApplicationRecord
  has_secure_password
	# Verify that name field is not blank and that it doesn't already exist in the db (prevents duplicates):
	validates :name, presence: true, uniqueness: true

end
