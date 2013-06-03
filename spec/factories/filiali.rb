# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :filiale do
    nome "MyString"
    codice "MyString"
    cab "MyString"
    banca_id 1
    area_territoriale_id 1
  end
end
