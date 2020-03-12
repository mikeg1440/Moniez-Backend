require 'rails_helper'

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

  context 'it has associations to earnings, expenses, and bills models' do

    it {should have_many(:earnings)}

    it {should have_many(:expenses)}

    it {should have_many(:bills)}

  end

  context 'updates the total after update' do

    budget = user.budgets.first

    budget.update_total

    it 'after adding earning' do
      original_total = budget.total
      earning = budget.earnings.build(earning_category_id: 1, amount: rand(1500))
      budget.save
      expect(budget.total * 1.0).to equal(original_total + earning.amount)
    end

    it 'after removing earning' do
      original_total = budget.total
      earning = budget.earnings.last
      earning.destroy
      expect(budget.total* 1.0).to eq(original_total - earning.amount)
    end

    it 'after adding expense'

    it 'after removing expense'

    it 'after adding bill'

    it 'removing expense'

  end

  context 'deletes all associated bills, expenses, and bills when destroyed' do

    it 'earnings deleted'

    it 'bills deleted'

    it 'expenses deleted'

  end


end
