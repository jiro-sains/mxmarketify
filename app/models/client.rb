class Client < ApplicationRecord
  validates :first_name, 
            :last_name, 
            :company, 
            :title, 
            :telephone, 
            :email, presence: true
  validates :first_name,
            :last_name,
            :title,
            format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
end
