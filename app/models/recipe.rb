class Recipe < ActiveRecord::Base
	has_one :menu
	has_one :recipe_type
end
