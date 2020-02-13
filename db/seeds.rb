# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# run custom task to populate the default categories
system('rake db:populate_categories')

puts "[+] Starting Database seeding"

# create a test user
user = User.create(username: 'tester', email: 'tester@mail.com', password: 'password', password_confirmation: 'password')

# create a new budget for testing
new_budget = user.budgets.build(title: 'Test Budget', description: 'A simple test budget to make sure everything is working correctly.')

# add some bills to the new budget
new_budget.bills.build(bill_category_id: 1, amount: 140)
new_budget.bills.build(bill_category_id: 2, amount: 600)
new_budget.bills.build(bill_category_id: 3, amount: 120)
new_budget.bills.build(bill_category_id: 4, amount: 200)
new_budget.bills.build(bill_category_id: 6, amount: 50)
new_budget.bills.build(bill_category_id: 7, amount: 430)

# add some expenses to the new budget
new_budget.expenses.build(expense_category_id: 1, amount: 60)
new_budget.expenses.build(expense_category_id: 2, amount: 50)
new_budget.expenses.build(expense_category_id: 6, amount: 80)
new_budget.expenses.build(expense_category_id: 7, amount: 35)
new_budget.expenses.build(expense_category_id: 8, amount: 40)
new_budget.expenses.build(expense_category_id: 9, amount: 25)

# add some earnings to the new budget
new_budget.earnings.build(earning_category_id: 1, amount: 80)
new_budget.earnings.build(earning_category_id: 1, amount: 1600)
new_budget.earnings.build(earning_category_id: 1, amount: 120)

# save all changes to DB
user.save

puts "[*] Database seeding completed!"
