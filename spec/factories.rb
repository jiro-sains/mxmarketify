FactoryBot.define do
  factory :campaign do
    
  end
  factory :client do
    first_name 'John' 
    last_name 'Smith' 
    company 'Acme'
    title 'Contador'
    telephone '999'
    email 'correo@yahoo.com'
    decision_maker true
  end
end