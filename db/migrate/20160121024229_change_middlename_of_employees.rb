class ChangeMiddlenameOfEmployees < ActiveRecord::Migration
  def change
    change_table :employees do |t|
      t.rename :middlename, :middle_name
    end
  end
end
