class School < ApplicationRecord
  has_many :teachers
  has_many :courses
  has_many :users
end
