class CreateExpenseCategoryTable < ActiveRecord::Migration[6.0]
  def change
    create_table :expense_categories do |t|
      t.string :title
    end
  end
end
