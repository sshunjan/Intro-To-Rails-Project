class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.text :name
      t.text :region
      t.integer :population
      t.integer :area
      t.integer :gdp

      t.timestamps
    end
  end
end
