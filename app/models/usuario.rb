class Usuario < ActiveRecord::Base
  attr_accessible :area_trab, :cargo, :cep, :cpf, :cpf_conjugue, :data_nasc, :email, :endereco, :estado_civil, :filhos, :hobbies, :local_nasc, :mae, :nome, :pai, :religiao, :renda, :rg, :telefone




def self.create_usuario(area_trab, cargo, cep, cpf, cpf_conjugue, data_nasc, email, endereco,
 estado_civil, filhos, hobbies, local_nasc, mae, nome, pai, religiao, renda, rg, telefone)

  usuario = Usuario.new({
    :area_trab => area_trab,
    :cargo => cargo,
    :cep => cep,
    :cpf => cpf_conjugue,
    :data_nasc => data_nasc,
    :email => email,
    :endereco => endereco,
    :estado_civil => estado_civil,
    :filhos => filhos,
    :hobbies => hobbies,
    :local_nasc => local_nasc,
    :mae => mae,
    :nome => nome,
    :pai => pai,
    :religiao => religiao,
    :renda => renda,
    :rg => rg,
    :telefone => telefone
  })
end

end

# == Schema Information
#
# Table name: usuarios
#
#  id           :integer          not null, primary key
#  nome         :string(255)
#  rg           :string(255)
#  cpf          :string(255)
#  cep          :string(255)
#  endereco     :string(255)
#  pai          :string(255)
#  mae          :string(255)
#  data_nasc    :date
#  local_nasc   :string(255)
#  estado_civil :string(255)
#  cpf_conjugue :string(255)
#  area_trab    :string(255)
#  cargo        :string(255)
#  renda        :integer
#  email        :string(255)
#  telefone     :string(255)
#  hobbies      :text
#  filhos       :integer
#  religiao     :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

