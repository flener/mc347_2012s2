# == Schema Information
#
# Table name: telefones
#
#  id          :integer          not null, primary key
#  numero      :string(255)
#  cliente_cpf :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Telefone < ActiveRecord::Base
  attr_accessible :cliente_cpf, :numero

  belongs_to :cliente

end
