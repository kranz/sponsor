class Banca < ActiveRecord::Base
  attr_accessible :abi, :nome

  has_many :aree_territoriali
  has_many :filiali
  has_many :posizioni
end
