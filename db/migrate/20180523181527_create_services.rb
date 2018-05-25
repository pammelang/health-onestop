class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.float :cost
      t.integer :capacity
      t.references :provider, index: true

      t.timestamps
    end
    add_index :services, :name
  end
end
