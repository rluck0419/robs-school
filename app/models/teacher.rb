class Teacher < ApplicationRecord
  belongs_to :school
  has_many :students

  def name_with_school
    "#{self.name} (#{self.school.name})"
  end
end
