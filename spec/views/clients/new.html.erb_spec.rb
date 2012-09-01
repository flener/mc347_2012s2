require 'spec_helper'

describe "clients/new" do
  before(:each) do
    assign(:client, stub_model(Client,
      :cpf => 1,
      :nome => "MyString",
      :rg => "MyString",
      :nome_pai => "MyString",
      :nome_mae => "MyString",
      :local_nascimento => "MyString",
      :quantidade_filhos => 1,
      :observacoes => "MyText",
      :endereco_id => 1,
      :religiao_id => 1,
      :hobby_id => 1,
      :email_id => 1,
      :telefone_id => 1,
      :trabalho_id => 1,
      :estado_civil_id => 1
    ).as_new_record)
  end

  it "renders new client form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => clients_path, :method => "post" do
      assert_select "input#client_cpf", :name => "client[cpf]"
      assert_select "input#client_nome", :name => "client[nome]"
      assert_select "input#client_rg", :name => "client[rg]"
      assert_select "input#client_nome_pai", :name => "client[nome_pai]"
      assert_select "input#client_nome_mae", :name => "client[nome_mae]"
      assert_select "input#client_local_nascimento", :name => "client[local_nascimento]"
      assert_select "input#client_quantidade_filhos", :name => "client[quantidade_filhos]"
      assert_select "textarea#client_observacoes", :name => "client[observacoes]"
      assert_select "input#client_endereco_id", :name => "client[endereco_id]"
      assert_select "input#client_religiao_id", :name => "client[religiao_id]"
      assert_select "input#client_hobby_id", :name => "client[hobby_id]"
      assert_select "input#client_email_id", :name => "client[email_id]"
      assert_select "input#client_telefone_id", :name => "client[telefone_id]"
      assert_select "input#client_trabalho_id", :name => "client[trabalho_id]"
      assert_select "input#client_estado_civil_id", :name => "client[estado_civil_id]"
    end
  end
end
