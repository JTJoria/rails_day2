class CategorizedEmployee < ActiveRecord::Base

  belongs_to :employee
  belongs_to :category
  
end
