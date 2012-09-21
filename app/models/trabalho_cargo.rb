class TrabalhoCargo < ActiveRecord::Base
  attr_accessible :cargo

  has_many :cliente_cpf

end
