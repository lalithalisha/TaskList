class CreateFooditems < ActiveRecord::Migration
  def change
    create_table :fooditems do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.string :section

      t.timestamps null: false
    end
  end
end
