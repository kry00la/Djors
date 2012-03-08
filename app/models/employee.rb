class Employee < ActiveRecord::Base
	has_one :package
	has_many :package_employees
end
