class Category < ActiveRecord::Base

has_many :categorized_employees
has_many :employees, through: :categorized_employees

end
