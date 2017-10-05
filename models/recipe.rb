class Recipe < ActiveRecord::Base
	belongs_to :mood
	belongs_to :like
end