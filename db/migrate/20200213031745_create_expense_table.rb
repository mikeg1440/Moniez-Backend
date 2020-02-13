class CreateExpenseTable < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.references :budget, null: false, foreign_key: true
      t.references :expense_category, null: false, foreign_key: true
      t.float :amount
    end
  end
end
