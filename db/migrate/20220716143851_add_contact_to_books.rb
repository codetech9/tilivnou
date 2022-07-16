class AddContactToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :contact, :string
  end
end
