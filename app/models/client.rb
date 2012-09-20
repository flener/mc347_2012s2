class Client < ActiveRecord::Base
  attr_accessible :cpf, :data_nascimento, :email_id, :endereco_id, :estado_civil_id, :hobby_id, 
  :local_nascimento, :nome, :nome_mae, :nome_pai, :observacoes, :quantidade_filhos, :religiao_id, 
  :rg, :telefone_id, :trabalho_area_id, :trabalho_cargo_id, :trabalho_renda_id, :ativo


  belongs_to :email
  belongs_to :endereco
  belongs_to :estado_civil
  belongs_to :hobby
  belongs_to :religiao
  belongs_to :telefone
  belongs_to :trabalho_area
  belongs_to :trabalho_renda
  belongs_to :trabalho_cargo
  


  self.per_page = 8


  # Validations
  # http://guides.rubyonrails.org/active_record_validations_callbacks.html

end
