# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :evento do
    localita "MyString"
    datainizio "2013-05-28"
    datafine "2013-05-28"
    orario "MyString"
    striscione "MyString"
    dataconsprevista "2013-05-28"
    dataconseffettiva "2013-05-28"
    datarestituzione "2013-05-28"
    numstriscione "MyString"
    durata "MyString"
    tipo_evento_id 1
    contributo_id 1
  end
end
