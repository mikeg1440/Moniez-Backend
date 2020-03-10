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

  context 'budgets' do

    user = User.last

    # create 4 new budgets for user
    (1..4).each {|num| user.budgets.build(title: "#{Faker::Name.first_name}'s Budget'", description: 'A budget to make sure everything is working correctly.') }
    user.save

    budget = user.budgets.first

    # create 5 new bills for budget
    (1..5).map {|num| budget.earnings.build(earning_category: EarningCategory.all.sample, amount: rand(1000)) }
    (1..5).map {|num| budget.bills.build(bill_category: BillCategory.all.sample, amount: rand(1000)) }
    (1..5).map {|num| budget.expenses.build(expense_category: ExpenseCategory.all.sample, amount: rand(1000)) }
    budget.save


    it 'has many budgets' do
      expect(user.budgets.count).to eq(4)
    end

    it 'has many earnings through budgets' do
      expect(user.earnings.count).to eq(5)
    end

    it 'has many bills through budgets' do
      expect(user.bills.count).to eq(5)
    end

    it 'has many expenses through budgets' do
      expect(user.expenses.count).to eq(5)
    end


  end




end
