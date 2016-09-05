class AddIndicesToContactShares < ActiveRecord::Migration
  def change
    add_index :contact_shares, :user_id
    add_index :contact_shares, :contact_id

    change_column :contact_shares, :user_id, :integer, unique: true
    change_column :contact_shares, :contact_id, :integer, unique: true
  end
end
