class DropTestUsers < ActiveRecord::Migration[6.0]
  def change
    drop_table :test_users
  end
end
