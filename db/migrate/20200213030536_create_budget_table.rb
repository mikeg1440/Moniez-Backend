class CreateBudgetTable < ActiveRecord::Migration[6.0]
  def change
    create_table :budgets do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.integer :total
    end
  end
end
