class Richiedente < ActiveRecord::Base
  attr_accessible :cana, :cap, :citta, :email, :fax, :indirizzo, 
                  :note, :piva, :provincia_id, :ragionesociale, 
                  :telefono, :codice, :codfiscale, :cod029

  belongs_to  :provincia

  has_many  :posizioni
  has_many  :contributi
  
  self.per_page = 20


  def self.search(search)
    if search
  	  where('ragionesociale LIKE ?', "%#{search}%")
  	else
  		scoped
  	end
  end
end
