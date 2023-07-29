class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  validates :phone, presence: true, uniqueness: true, format: { with: /\A\d{11}\z/ }
  validates :cpf, presence: true, uniqueness: true, format: { with: /\A\d{11}\z/ }
end
