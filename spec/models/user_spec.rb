# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'user validation' do
    it 'valid user?' do
      user = User.new
      user.name = 'test'
      user.email = 'test@test.com'
      user.phone = '5521982101094'
      user.cpf = '05334219773'
      expect(user.valid?).to be_truthy
    end

    it 'cpf is unique?' do
      User.create!(name: 'test', email: 'test@test.com',
                   phone: '5521982101094', cpf: '05334219773')
      user = User.new
      user.name = 'test'
      user.email = 'test@test.com'
      user.phone = '5521982101094'
      user.cpf = '05334219773'
      expect(user.valid?).to be_falsey
    end

    it 'email is unique?' do
      User.create!(name: 'test', email: 'test@test.com',
                   phone: '5521982101094', cpf: '05238784945')
      user = User.new
      user.name = 'test'
      user.email = 'test@test.com'
      user.phone = '5521982101094'
      user.cpf = '05334219773'
      expect(user.valid?).to be_falsey
    end

    it 'user name exist?' do
      user = User.new
      user.name = nil
      user.email = 'test@test.com'
      user.phone = '5521982101094'
      user.cpf = '05334219773'
      expect(user.valid?).to be_falsey
    end

    it 'user cpf exist?' do
      user = User.new
      user.name = 'test'
      user.email = 'test@test.com'
      user.phone = '5521982101094'
      user.cpf = nil
      expect(user.valid?).to be_falsey
    end

    it 'user email exist?' do
      user = User.new
      user.name = 'test'
      user.email = nil
      user.phone = '5521982101094'
      user.cpf = '05334219773'
      expect(user.valid?).to be_falsey
    end

    it 'cpf is valid?' do
      user = User.new
      user.name = 'test'
      user.email = 'test@test.com'
      user.phone = '5521982101094'
      user.cpf = '00000000000'
      expect(user.valid?).to be_falsey
    end

    it 'phone is valid?' do
      user = User.new
      user.name = 'test'
      user.email = 'test@test.com'
      user.phone = '12345678'
      user.cpf = '05334219773'
      expect(user.valid?).to be_falsey
    end
  end
end
