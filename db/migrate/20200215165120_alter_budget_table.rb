class AlterBudgetTable < ActiveRecord::Migration[6.0]
  def up
    change_column_default(:budgets, :total, 0.0)
  end
end
