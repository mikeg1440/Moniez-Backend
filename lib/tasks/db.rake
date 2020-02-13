namespace :db do
  desc "Populate the database with default categories"
  task populate_categories: :environment do

    puts '[+] Populating Bill Categories'
    BillCategory.create(title: 'Utilities')
    BillCategory.create(title: 'Housing')
    BillCategory.create(title: 'Food')
    BillCategory.create(title: 'Insurance')
    BillCategory.create(title: 'Healthcare')
    BillCategory.create(title: 'Transportation')
    BillCategory.create(title: 'Debt')
    puts '[*] Bill Categories Populated!'

    puts '[+] Populating Expense Categories'
    ExpenseCategory.create(title: 'Personal Spending')
    ExpenseCategory.create(title: 'Entertainment')
    ExpenseCategory.create(title: 'Miscellaneous')
    ExpenseCategory.create(title: 'Subscription')
    ExpenseCategory.create(title: 'Gift/Donation')
    ExpenseCategory.create(title: 'Supplies/Household Items')
    ExpenseCategory.create(title: 'Hobbies')
    ExpenseCategory.create(title: 'Grooming')
    ExpenseCategory.create(title: 'Liesure')
    puts '[*] Expense Categories Populated!'

    puts '[+] Populating Earning Categories'
    EarningCategory.create(title: 'Dividend')
    EarningCategory.create(title: 'Salary/Wages')
    EarningCategory.create(title: 'Investment')
    puts '[*] Earning Categories Populated!'

    puts '[*] ------- CATEGORIES POPULATED -------- [*]'
    # return to avoid infinite loop when invoked from seed file
    next
  end

end
