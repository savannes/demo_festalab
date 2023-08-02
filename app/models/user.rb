# frozen_string_literal: true

require 'cpf_cnpj'
require 'phonelib'

class User < ApplicationRecord
  validates :cpf, :email, uniqueness: true
  validates :name, :cpf, :email, presence: { message: 'é um campo obrigatório' }
  validates :email, format: { with: /\A[\w.+-]+@\w+\.\w+\z/ }
  validate :validar_cpf
  validate :telefone_valido

  def validar_cpf
    return if cpf.blank?

    return if CPF.valid?(cpf)

    errors.add(:cpf, 'inválido')
  end

  def telefone_valido
    return if phone.blank?

    return if Phonelib.valid?(phone)

    errors.add(:phone, 'inválido')
  end
end
