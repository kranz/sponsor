class Regione < ActiveRecord::Base
  attr_accessible :nome

  has_many  :province

  
end
