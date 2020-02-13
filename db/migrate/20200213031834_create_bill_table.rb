class CreateBillTable < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|
      t.references :budget, null: false, foreign_key: true
      t.references :bill_category, null: false, foreign_key: true
      t.float :amount
    end
  end
end
