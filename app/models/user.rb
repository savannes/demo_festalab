class User < ApplicationRecord
  validates :name, :email, :cpf, uniqueness: true, presence: { message: 'é um campo obrigatório' }
  validates :email, format: { with: /\A[\w.+-]+@\w+\.\w+\z/ }
  validates :phone, :cpf, format: { with: /\A\d{11}\z/, message: 'deve conter apenas 11 números, sem espaço ou traço' }
end
