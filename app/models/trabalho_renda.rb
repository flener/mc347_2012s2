class TrabalhoRenda < ActiveRecord::Base
  attr_accessible :renda

  has_many :cliente_cpf

end
