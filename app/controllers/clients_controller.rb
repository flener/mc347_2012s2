class ClientsController < ApplicationController
  
  before_filter :login

  def login
    if admin_signed_in? || operador_signed_in?
      return
    else
      redirect_to new_operador_session_path
    end
  end

  def search
    @client = Client.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @client }
    end
  end
  
  def add_item row_name, value
    if value == nil || value.size == 0
      return ""
    else
      return " and " + row_name + " = '" + value+ "'" 
    end
  end
  
  def add_like_item row_name, value
    if value == nil || value.size == 0
      return ""
    else
      return " and " + row_name + " like '%" + value+ "%'" 
    end
  end
  
  def searchResult
    @client = Client.new(params[:client])
    
    query = "(ativo) = 1"
    query+= add_item "cpf" , @client.cpf
    query+= add_like_item "nome" , @client.nome
    query+= add_item "rg" , @client.rg
    query+= add_like_item "nome_pai" , @client.nome_pai
    query+= add_like_item "nome_mae" , @client.nome_mae
    #query+= add_item "data_nascimento", @client.data_nascimento
    query+= add_like_item "local_nascimento" , @client.local_nascimento
    query+= add_item "email", @client.email
    query+= add_item "telefone", @client.telefone
    query+= add_item "quantidade_filhos", @client.quantidade_filhos
    query+= add_item "religiao_id", @client.religiao_id.to_s
    query+= add_item "hobby_id", @client.hobby_id.to_s
    query+= add_item "trabalho_area_id", @client.trabalho_area_id.to_s
    query+= add_item "trabalho_cargo_id", @client.trabalho_cargo_id.to_s
    query+= add_item "trabalho_renda_id", @client.trabalho_renda_id.to_s
    
    @clients = Client.where(query).sorted(params[:sort], :cpf)
  end
  
  # GET /clients
  # GET /clients.json
  def index
    @clients = @clients = Client.where("(ativo) = 1").sorted(params[:sort], :cpf).page(params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def indexEx
    @clients = Client.where("(ativo) = 0").sorted(params[:sort], :cpf).page(params[:page])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
    @client = Client.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @client }
    end
  end

  # GET /clients/new
  # GET /clients/new.json
  def new
    @client = Client.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @client }
    end
  end

  # GET /clients/1/edit
  def edit
    @client = Client.find(params[:id])
  end

  # POST /clients
  # POST /clients.json
  def create 
    @client = Client.new(params[:client])
    @client.ativo = true
    @client.save

    respond_to do |format|
      if @client.save
        format.html { redirect_to @client, :notice => 'Client was successfully created.' }
        format.json { render :json => @client, :status => :created, :location => @client }
      else
        format.html { render :action => "new" }
        format.json { render :json => @client.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clients/1
  # PUT /clients/1.json
  def update
    @client = Client.find(params[:id])

    respond_to do |format|
      if @client.update_attributes(params[:client])
        format.html { redirect_to @client, :notice => 'Client was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @client.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client = Client.find(params[:id])
    if @client.ativo == false
      @client.ativo = true
      @client.save

    else
      @client.ativo = false
      @client.save
    end
    
    @client.save

    respond_to do |format|
      format.html { redirect_to clients_url }
      format.json { head :no_content }
    end
  end

  def cliente_estagiario
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_financeiro
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def relatorios
  end

  def restore
    @client = Client.find(params[:id])
    @client.ativo = 1
    @client.save
    redirect_to clientesExcluidos_path
  end

  def cliente_pleno
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_gerente
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_supervisor
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_diretor
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_ceo
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_cio
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_cfo
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_desempregado
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_comercio
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_servicos
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_construtora
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_cristianismo
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_islamismo
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_judaismo
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_ateu
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_espiritismo
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_esportes
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_games
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_televisao
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_leitura
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_compras
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_sem_hobbies
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_renda1
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_renda2
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_renda3
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_renda4
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_renda5
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_renda6
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_renda7
    @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end
end
