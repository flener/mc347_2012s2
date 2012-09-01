require 'spec_helper'

describe "clients/index" do
  before(:each) do
    assign(:clients, [
      stub_model(Client,
        :cpf => 1,
        :nome => "Nome",
        :rg => "Rg",
        :nome_pai => "Nome Pai",
        :nome_mae => "Nome Mae",
        :local_nascimento => "Local Nascimento",
        :quantidade_filhos => 2,
        :observacoes => "MyText",
        :endereco_id => 3,
        :religiao_id => 4,
        :hobby_id => 5,
        :email_id => 6,
        :telefone_id => 7,
        :trabalho_id => 8,
        :estado_civil_id => 9
      ),
      stub_model(Client,
        :cpf => 1,
        :nome => "Nome",
        :rg => "Rg",
        :nome_pai => "Nome Pai",
        :nome_mae => "Nome Mae",
        :local_nascimento => "Local Nascimento",
        :quantidade_filhos => 2,
        :observacoes => "MyText",
        :endereco_id => 3,
        :religiao_id => 4,
        :hobby_id => 5,
        :email_id => 6,
        :telefone_id => 7,
        :trabalho_id => 8,
        :estado_civil_id => 9
      )
    ])
  end

  it "renders a list of clients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Rg".to_s, :count => 2
    assert_select "tr>td", :text => "Nome Pai".to_s, :count => 2
    assert_select "tr>td", :text => "Nome Mae".to_s, :count => 2
    assert_select "tr>td", :text => "Local Nascimento".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
  end
end
