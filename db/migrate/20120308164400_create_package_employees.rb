class CreatePackageEmployees < ActiveRecord::Migration
  def change
    create_table :package_employees do |t|

      t.timestamps
    end
  end
end
