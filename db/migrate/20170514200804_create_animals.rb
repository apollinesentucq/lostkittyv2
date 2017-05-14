class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :address
      t.string :category
      t.date :found_on

      t.timestamps
    end
  end
end
