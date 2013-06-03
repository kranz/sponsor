class TipoContributo < ActiveRecord::Base
  attr_accessible :descrizione
  
  has_many  :contributi

end
