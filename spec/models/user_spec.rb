require 'rails_helper'

RSpec.describe User, type: :model do

  context 'on initialization' do

    it 'is valid with a username, email and password' do
      user = User.create(username: 'tester', email: 'tester@mail.com', password: 'password', password_confirmation: 'password')
      expect(user).to be_valid
    end


  end


end
