class Filiale < ActiveRecord::Base
  attr_accessible :area_territoriale_id, :banca_id, :cab, :codice, :nome

  belongs_to  :banca
  belongs_to  :area_territoriale
  has_many  :contributi
  has_many  :posizioni

end
