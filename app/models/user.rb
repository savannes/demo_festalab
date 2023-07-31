require 'cpf_cnpj'
require 'phonelib'

class User < ApplicationRecord

  validates :name, :email, :cpf, uniqueness: true, presence: { message: 'é um campo obrigatório' }
  validates :email, format: { with: /\A[\w.+-]+@\w+\.\w+\z/ }
  #validates :phone, format: { with: /\A\d{11}\z/, message: 'deve conter apenas 11 números, sem espaço ou traço' }
  validate :validar_cpf
  validate :telefone_valido

  def validar_cpf
    return if cpf.blank?

    unless CPF.valid?(cpf)
      errors.add(:cpf, 'inválido')
    end
  end

  def telefone_valido
    return if phone.blank?

    unless Phonelib.valid?(phone)
      errors.add(:phone, 'inválido')
    end
  end


end
