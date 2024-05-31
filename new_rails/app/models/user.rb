class User < ApplicationRecord

    EMAIL_REGEXP = /\A[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\z/
  
    validates :name, presence: true
    validates :DOB, presence: true
    validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEXP }
    validates :phone_number, presence: true
end