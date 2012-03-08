class PackageEmployee < ActiveRecord::Base
	belongs_to :employee
	belongs_to :package
end
