class Contributo < ActiveRecord::Base
  attr_accessible :codice, :datarichiesta, :filiale_id, :oggetto, 
                  :richiedente_id, :tipo_contributo_id, :importorichiesto,
                  :segnalante, :dataerogazione, :importoerogato, :aliquotaiva,
                  :ritornoprevisto, :ritornoeffettivo, :stato_contributo_id

  belongs_to :richiedente
  belongs_to :filiale
  belongs_to :tipo_contributo
  belongs_to :stato_contributo

  has_many  :documenti
  has_many  :azioni
  has_many  :eventi

end
