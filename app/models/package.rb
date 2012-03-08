class Package < ActiveRecord::Base
	has_many :employees
	has_many :package_employees
end
