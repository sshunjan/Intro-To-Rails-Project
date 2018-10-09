class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.text :name
      t.integer :isbn
      t.text :author
      t.integer :year
      t.text :publisher

      t.timestamps
    end
  end
end
