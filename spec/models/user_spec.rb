require 'rails_helper'

Rails.application.load_seed

RSpec.describe User, type: :model do

  if u = User.find_by(username: 'spectester')
    u.destroy
  end


  context 'on initialization' do
    user = User.create(username: 'spectester', email: 'spectester@mail.com', password: 'password', password_confirmation: 'password')

    it 'is valid with a username, email and password' do
      expect(user).to be_valid
    end

    it 'is invalid without a username' do
      user = User.create(email: 'tester@mail.com', password: 'password', password_confirmation: 'password')
      expect(user).to be_invalid
    end

    it 'is invalid without a email' do
      user = User.create(username: 'tester', password: 'password', password_confirmation: 'password')
      expect(user).to be_invalid
    end

    it 'is invalid without a password' do
      user = User.create(username: 'tester', email: 'tester@mail.com')
      expect(user).to be_invalid
    end

  end

  end


end
