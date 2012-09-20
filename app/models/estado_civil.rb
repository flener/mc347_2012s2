# == Schema Information
#
# Table name: estado_civils
#
#  id          :integer          not null, primary key
#  cpf_conjuge :string(255)
#  cliente_cpf :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class EstadoCivil < ActiveRecord::Base
  attr_accessible :cliente_cpf, :cpf_conjuge

  belongs_to :cliente_cpf

end
