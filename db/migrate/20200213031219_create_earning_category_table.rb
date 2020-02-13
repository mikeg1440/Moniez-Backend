class CreateEarningCategoryTable < ActiveRecord::Migration[6.0]
  def change
    create_table :earning_categories do |t|
      t.string :title
    end
  end
end
