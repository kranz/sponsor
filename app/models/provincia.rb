class Provincia < ActiveRecord::Base
  attr_accessible :nome, :regione_id, :sigla

  belongs_to  :regione
  has_many  :richiedenti
  has_many  :aree_territoriali

end
