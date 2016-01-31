class AddMiddlenameToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :middlename, :string
  end
end