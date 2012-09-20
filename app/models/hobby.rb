# == Schema Information
#
# Table name: hobbies
#
#  id         :integer          not null, primary key
#  nome       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Hobby < ActiveRecord::Base
  attr_accessible :nome

  belongs_to :cliente_cpf

end
