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

  belongs_to :cliente_cpf

end
