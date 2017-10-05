class Recipe < ActiveRecord::Base
	belongs_to :mood
	has_many :likes
end