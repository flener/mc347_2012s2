class RestsController < ApplicationController

  respond_to :html, :json, :xml

  def existe
    @clienteExiste = ClienteExiste.new
    if @client = Client.find_by_cpf(params[:id])
      @clienteExiste.existe = 1
    else
      @clienteExiste.existe = 0
    end
    respond_with @clienteExiste
  end

  def cep
    @clienteEndereco = ClienteEndereco.new
    if @client = Client.find_by_cpf(params[:id])
      @clienteEndereco.numero = @client.numero
      @clienteEndereco.cep = @client.cep
    else
      @clienteEndereco.cep = ""
      @clienteEndereco.numero = -1
    end
    respond_with @clienteEndereco
  end

  def tudo
    @client = Client.find_by_cpf(params[:id])
    respond_with @client    
  end
end