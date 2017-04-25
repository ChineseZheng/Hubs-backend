class Api::V1::Category < ApplicationRecord
	has_many :courses
end
