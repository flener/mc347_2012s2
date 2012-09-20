# == Schema Information
#
# Table name: trabalhos
#
#  id            :integer          not null, primary key
#  area_trabalho :string(255)
#  cargo         :string(255)
#  rendimento    :integer
#  cliente_cpf   :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class TrabalhoArea < ActiveRecord::Base
  attr_accessible :area

  has_many :cliente_cpf

end
