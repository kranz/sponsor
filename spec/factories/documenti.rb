# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :documento do
    numerofattura "MyString"
    datafattura "2013-05-28"
    importo "9.99"
    tipo_documento_id 1
    valuta_id 1
    contributo_id 1
  end
end
