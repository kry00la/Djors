class AddEmployeeIdToPackageEmployee < ActiveRecord::Migration
  def change
    add_column :package_employees, :employee_id, :integer

  end
end
