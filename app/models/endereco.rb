# == Schema Information
#
# Table name: enderecos
#
#  id          :integer          not null, primary key
#  cep         :string(255)
#  estado      :string(255)
#  cidade      :string(255)
#  bairro      :string(255)
#  rua         :string(255)
#  cliente_cpf :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Endereco < ActiveRecord::Base
  attr_accessible :bairro, :cep, :cidade, :estado, :rua

  has_many :cliente_cpf

end
