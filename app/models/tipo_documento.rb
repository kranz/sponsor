class TipoDocumento < ActiveRecord::Base
  attr_accessible :descrizione

  has_many  :documenti
end
