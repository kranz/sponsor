class Documento < ActiveRecord::Base
  attr_accessible :contributo_id, :datafattura, :importo, :numerofattura, :tipo_documento_id, :valuta_id

  belongs_to  :contributo
  belongs_to  :tipo_documento
  belongs_to  :valuta

end
