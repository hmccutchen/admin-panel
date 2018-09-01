class Cohort < ApplicationRecord
  belongs_to :course
  has_one :teacher
end
