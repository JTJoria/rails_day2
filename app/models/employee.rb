class Employee < ActiveRecord::Base

  belongs_to :user
  has_many :categorized_employees
  has_many :employees, through: :categorized_employees

  def friendly_updated_at
    updated_at.strftime("%b %d %Y")
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def prefix
    "+81 #{phone_number}"
  end

  # def japan_phone
  #   if phone_number.starts_with?("1")
  #     phone_number.sub!("1","")
  #   end
  #     phone_number.gsub!("/\D/","")
  #     phone_number.insert(4, " ")
  # end
end
