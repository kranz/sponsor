class Azione < ActiveRecord::Base
  attr_accessible :contributo_id, :nome

  belongs_to  :contributo
  belongs_to  :tipo_azione
  
end
