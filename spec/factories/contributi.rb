# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contributo do
    codice "MyString"
    datarichiesta "2013-05-28"
    oggetto "MyText"
    tipo_contributo_id 1
    filiale_id 1
    richiedente_id 1
  end
end
