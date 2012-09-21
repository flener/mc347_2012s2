class ClientsController < ApplicationController
  # GET /clients
  # GET /clients.json
  def index
    @clients = @clients = Client.where("(ativo) = 1").page(params[:page])

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
    @client.ativo = false
    @client.save
    
    respond_to do |format|
      format.html { redirect_to clients_url }
      format.json { head :no_content }
    end
  end

  def cliente_estagiario
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_financeiro
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def relatorios
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_pleno
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_gerente
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_supervisor
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_diretor
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_ceo
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_cio
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_cio
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_desempregado
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_comercio
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_servicos
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_construtora
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_cristianismo
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_islamismo
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_judaismo
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_ateu
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_espiritismo
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_esportes
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_games
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_televisao
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_leitura
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_compras
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_sem_hobbies
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_renda1
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_renda2
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_renda3
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_renda4
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_renda5
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_renda6
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end

  def cliente_renda7
    @clients = @clients = Client.where("(ativo) = 1")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clients }
    end
  end
end
