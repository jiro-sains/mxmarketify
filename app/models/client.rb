class Client < ApplicationRecord
  validates_presence_of :first_name, 
                        :last_name,
                        :company, 
                        :title, 
                        :telephone, 
                        :email, message: 'Este campo no puede dejarse en blanco'
  validates :first_name,
            :last_name,
            :title,
            format: { with: /\A[a-zA-Z]+\z/, message: "Este campo sólo acepta letras" }
  validates_format_of :email,:with => Devise::email_regexp, message: 'El formato del correo electrónico es invalido'
end
