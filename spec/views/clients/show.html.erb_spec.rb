require 'spec_helper'

describe "clients/show" do
  before(:each) do
    @client = assign(:client, stub_model(Client,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Nome/)
    rendered.should match(/Rg/)
    rendered.should match(/Nome Pai/)
    rendered.should match(/Nome Mae/)
    rendered.should match(/Local Nascimento/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/7/)
    rendered.should match(/8/)
    rendered.should match(/9/)
  end
end
