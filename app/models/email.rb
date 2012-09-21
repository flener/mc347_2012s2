# == Schema Information
#
# Table name: emails
#
#  id          :integer          not null, primary key
#  endereco    :text
#  cliente_cpf :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Email < ActiveRecord::Base
  attr_accessible :cliente_cpf, :endereco

  has_many :cliente_cpf

end
