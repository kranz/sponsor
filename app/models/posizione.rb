class Posizione < ActiveRecord::Base
  attr_accessible :banca_id, :filiale_id_id, :iban, :numeroconto, :richiedente_id

  belongs_to  :richiedente
  belongs_to  :banca
  belongs_to  :filiale

end
