# encoding: utf-8

class Client < ActiveRecord::Base
  attr_accessible :cpf, :data_nascimento, :email, :endereco, :estado_civil_id, :hobby_id, 
  :local_nascimento, :nome, :nome_mae, :nome_pai, :observacoes, :quantidade_filhos, :religiao_id, 
  :rg, :telefone, :trabalho_area_id, :trabalho_cargo_id, :trabalho_renda_id, :ativo


  belongs_to :estado_civil
  belongs_to :hobby
  belongs_to :religiao
  belongs_to :trabalho_area
  belongs_to :trabalho_renda
  belongs_to :trabalho_cargo
  

  self.per_page = 8
  
  validate :cpf, :uniqueness => true
  validate :cpf_validation, :email_validation , :telefone_validation, :nascimento_validation
  
  
  def nascimento_validation
    puts "DATA",data_nascimento.to_s
    begin
      Date.strptime(data_nascimento.to_s,"%Y-%m-%d")
      return true
    rescue => e
      errors.add(e.message);
      return false
    end
    
  end
  
  def telefone_validation
    if telefone.size == 0 || (/([0-9]{10,11})/=~telefone)==nil
      errors.add(:telefone, ": Telefone inválido")
      return false
    end
    
    return true
  end
  
  def email_validation
    if email.size == 0 || (/\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/ =~ email) == nil
      errors.add(:email , ": Email invalido")
      return false
    end
    return true
  end
  
  
  def cpf_validation
    begin
      if cpf.size !=11
        errors.add(:cpf , ": O CPF deve conter 11 dígitos")
        return false
      end
      
      mul_nums=[11,10,9,8,7,6,5,4,3,2]
      digits = cpf.chars.collect { |val| val }
      
      result = true;
      sum=0
      
      for i in 1..mul_nums.size-1
        sum=sum+mul_nums[i]*digits[i-1].to_i
      end
      
      if sum%11 < 2
        sum=0
      else
        sum=11-sum%11
      end
      
      if digits[-2].to_i != sum
        result = false
      end
        
      sum=0
      for i in 0..mul_nums.size-1
        sum=sum+mul_nums[i]*digits[i].to_i
      end
      
      if sum%11 < 2
        sum=0
      else
        sum=11-sum%11
      end
      
      if digits[-1].to_i != sum
        result = false
      end
      
      if !result
        errors.add( :cpf , ": Não é válido");
      end
      
      return result

    rescue => e
      errors.add( :cpf , ": Só são permitidos dígitos no cpf")
      return false
    end
    
  end
  # Validations
  # http://guides.rubyonrails.org/active_record_validations_callbacks.html

end
