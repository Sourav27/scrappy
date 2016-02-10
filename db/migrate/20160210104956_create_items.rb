class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :category
      t.integer :quantity , default: 0
      t.timestamps null: false
    end
  end
end
