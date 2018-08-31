class Admin < ApplicationRecord
  has_secure_password validations: true
    # validates :password,
  #   presence: { on: :create },
  #   length: { minimum: 8, allow_blank: false }
end
