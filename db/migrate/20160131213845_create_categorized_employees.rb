class CreateCategorizedEmployees < ActiveRecord::Migration
  def change
    create_table :categorized_employees do |t|
      t.integer :employee_id
      t.integer :category_id

      t.timestamps
    end
  end
end
