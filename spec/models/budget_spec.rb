require 'rails_helper'

Rails.application.load_seed

RSpec.describe Budget, type: :model do

  user = User.first

  context 'on initialization' do

    it 'is valid with a title and description' do
      budget = user.budgets.build(title: 'A spec test budget', description: 'A new budget for testing with RSpec')
      expect(budget).to be_valid
    end

    it 'is valid without a desription' do
      budget = user.budgets.build(title: 'A spec test budget')
      expect(budget).to be_valid
    end

    it 'is invalid without a title' do
      budget = user.budgets.build(description: 'A new budget for testing with RSpec')
      expect(budget).to be_invalid
    end

    it 'is invalid without a user' do
      budget = Budget.create(title: 'A spec test budget', description: 'A new budget for testing with RSpec')
      expect(budget).to be_invalid
    end

  end


end
