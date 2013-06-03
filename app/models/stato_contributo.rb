class StatoContributo < ActiveRecord::Base
  attr_accessible :nome

  has_many  :contributi
end
