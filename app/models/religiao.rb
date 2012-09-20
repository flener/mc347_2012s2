# == Schema Information
#
# Table name: religiaos
#
#  id         :integer          not null, primary key
#  nome       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Religiao < ActiveRecord::Base
  attr_accessible :nome

  has_many :clients

end
