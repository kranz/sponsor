# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :posizione do
    numeroconto "MyString"
    iban "MyString"
    richiedente_id 1
    banca_id 1
    filiale_id_id 1
  end
end
