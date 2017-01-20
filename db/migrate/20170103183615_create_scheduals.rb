class CreateScheduals < ActiveRecord::Migration[5.0]
  def change
    create_table :scheduals do |t|
      t.string :item
      t.boolean :comp
      t.integer :stars

      t.timestamps
    end
  end
end
