class CreateEarningTable < ActiveRecord::Migration[6.0]
  def change
    create_table :earnings do |t|
      t.references :budget, null: false, foreign_key: true
      t.references :earning_category, null: false, foreign_key: true
      t.float :amount
    end
  end
end
