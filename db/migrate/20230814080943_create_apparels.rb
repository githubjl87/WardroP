class CreateApparels < ActiveRecord::Migration[7.0]
  def change
    create_table :apparels do |t|
      t.string :name
      t.string :size
      t.string :category
      t.float :price
      t.text :overview
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
