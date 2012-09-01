class Endereco < ActiveRecord::Base
  attr_accessible :bairro, :cep, :cidade, :cliente_cpf, :estado, :rua
end
