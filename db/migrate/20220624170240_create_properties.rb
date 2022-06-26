class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.text :name
      t.text :price
      t.text :address
      t.text :age
      t.string :remarks

      t.timestamps
    end
  end
end
