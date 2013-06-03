class AreaTerritoriale < ActiveRecord::Base
  attr_accessible :banca_id, :codice, :nome, :provincia_id

  belongs_to  :banca
  belongs_to  :provincia
  has_many  :filiali
end
