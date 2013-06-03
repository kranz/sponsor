class Valuta < ActiveRecord::Base
  attr_accessible :nome, :sigla

  has_many  :documenti

end
