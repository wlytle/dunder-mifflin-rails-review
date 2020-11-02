class Dog < ApplicationRecord
  has_many :employees

  def self.sort_by_employee_number
    self.all.sort_by { |dog| dog.employees.size }.reverse
  end
end
