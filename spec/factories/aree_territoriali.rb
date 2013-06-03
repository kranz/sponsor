# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :area_territoriale do
    nome "MyString"
    codice "MyString"
    provincia_id 1
    banca_id 1
  end
end
