class Menu < ActiveRecord::Base
	has_many :recipes
	has_many :menu_recipes
end
