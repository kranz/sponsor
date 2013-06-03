class TipoEvento < ActiveRecord::Base
  attr_accessible :descrizione

  has_many  :eventi
end
