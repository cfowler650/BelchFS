class CreateTestUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :test_users do |t|
        t.string :name, null: false
        t.timestamps
    end
  end
end
