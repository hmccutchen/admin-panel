class Teacher < ApplicationRecord
  # has_secure_password validations: true
  belongs_to :cohort
end
