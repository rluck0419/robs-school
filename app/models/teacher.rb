class Teacher < ApplicationRecord
  belongs_to :school
  has_many :students
end
