class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :amount
      t.string :unit
      t.string :name
      t.belongs_to :recipe, index: true

      t.timestamps
    end
  end
end
