# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :richiedente do
    cana "MyString"
    ragionesociale "MyString"
    indirizzo "MyString"
    cap "MyString"
    citta "MyString"
    telefono "MyString"
    fax "MyString"
    piva "MyString"
    email "MyString"
    note "MyString"
    provincia_id 1
  end
end
