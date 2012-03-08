class AddPackageIdToPackageEmployee < ActiveRecord::Migration
  def change
    add_column :package_employees, :package_id, :integer

  end
end
