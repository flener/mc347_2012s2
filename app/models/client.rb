class Client < ActiveRecord::Base
  attr_accessible :cpf, :data_nascimento, :email_id, :endereco_id, :estado_civil_id, :hobby_id, :local_nascimento, :nome, :nome_mae, :nome_pai, :observacoes, :quantidade_filhos, :religiao_id, :rg, :telefone_id, :trabalho_id, :ativo

  after_initialize :init

  def init
    self.ativo = true
  end

end
