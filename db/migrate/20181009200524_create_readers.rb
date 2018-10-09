class CreateReaders < ActiveRecord::Migration[5.2]
  def change
    create_table :readers do |t|
      t.text :name
      t.references :address, foreign_key: true
      t.integer :phone
      t.text :email
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
