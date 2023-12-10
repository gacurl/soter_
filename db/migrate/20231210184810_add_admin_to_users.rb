class AddAdminToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :admin, :boolean, default: false #default: false explicitly shows users will NOT be administrators
  end
end
