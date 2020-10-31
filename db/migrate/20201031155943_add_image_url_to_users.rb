class AddImageUrlToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :imageURL, :string
  end
end
