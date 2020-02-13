namespace :db do
  desc "Populate the database with default categories"
  task populate_categories: :environment do
    BillCategory.create(title: 'Utilities')
    BillCategory.create(title: 'Housing')
    BillCategory.create(title: 'Food')
    BillCategory.create(title: 'Insurance')
    BillCategory.create(title: 'Healthcare')
    BillCategory.create(title: 'Transportation')
    BillCategory.create(title: 'Debt')

    ExpenseCategory.create(title: 'Personal Spending')
    ExpenseCategory.create(title: 'Entertainment')
    ExpenseCategory.create(title: 'Miscellaneous')
    ExpenseCategory.create(title: 'Subscription')
    ExpenseCategory.create(title: 'Gift/Donation')
    ExpenseCategory.create(title: 'Supplies/Household Items')
    ExpenseCategory.create(title: 'Hobbies')
    ExpenseCategory.create(title: 'Grooming')
    ExpenseCategory.create(title: 'Liesure')

    EarningCategory.create(title: 'Dividend')
    EarningCategory.create(title: 'Salary/Wages')
    EarningCategory.create(title: 'Investment')

  end

end
