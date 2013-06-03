class Evento < ActiveRecord::Base
  attr_accessible :contributo_id, :dataconseffettiva, :dataconsprevista, :datafine, :datainizio, :datarestituzione, :durata, :localita, :numstriscione, :orario, :striscione, :tipo_evento_id

  belongs_to  :tipo_evento
  belongs_to  :contributo


end
