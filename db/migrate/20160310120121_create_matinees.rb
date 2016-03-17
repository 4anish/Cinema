class CreateMatinees < ActiveRecord::Migration
  def change
    create_table :matinees do |t|
      t.string :movie_name
      t.string :location
      t.string :string
      t.decimal :price

      t.timestamps null: false
    end
  end
end
