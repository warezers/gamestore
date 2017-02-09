class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :year
      t.text :description
      t.string :price

      t.timestamps
    end
  end
end
