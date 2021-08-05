class AddUserWorkAreaToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :userNotes
    remove_column :users, :userIdentityCode
    add_column :users, :userFullName, :string
    add_column :users, :userWorkArea, :string
  end
end
