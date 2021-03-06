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

    it 'after adding expense' do
      original_total = budget.total
      expense = budget.expenses.build(expense_category_id: 1, amount: rand(200))
      budget.save
      expect(budget.total * 1.0).to equal(original_total - expense.amount)
    end

    it 'after removing expense' do
      original_total = budget.total
      expense = budget.expenses.last
      expense.destroy
      expect(budget.total * 1.0).to equal(original_total + expense.amount)
    end

    it 'after adding bill' do
      original_total = budget.total
      bill = budget.bills.build(bill_category_id: 1, amount: rand(200))
      budget.save
      expect(budget.total * 1.0).to equal(original_total - bill.amount)
    end

    it 'removing expense' do
      original_total = budget.total
      bill = budget.bills.last
      bill.destroy
      expect(budget.total * 1.0).to equal(original_total + bill.amount)
    end

  end

  context 'deletes all associated bills, expenses, and bills when destroyed' do

    budget = user.budgets.first
    it 'earnings deleted' do
      expect { budget.destroy }.to change(Earning, :count).by(-budget.earnings.count)
    end

    it 'bills deleted' do
      expect { budget.destroy }.to change(Bill, :count).by(-budget.bills.count)
    end

    it 'expenses deleted' do
      expect { budget.destroy }.to change(Expense, :count).by(-budget.expenses.count)
    end


    if Rails.env.test?
      user.destroy
    end

  end

end
