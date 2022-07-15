class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :year_of_production
      t.integer :price
      t.string :location
      t.datetime :starts_at
      t.text :description

      t.timestamps
    end
  end
end
