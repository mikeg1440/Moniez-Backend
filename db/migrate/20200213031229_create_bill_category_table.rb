class CreateBillCategoryTable < ActiveRecord::Migration[6.0]
  def change
    create_table :bill_categories do |t|
      t.string :title
    end
  end
end
