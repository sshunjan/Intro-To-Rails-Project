class RemovePublisherFromBook < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :publisher, :text
  end
end
