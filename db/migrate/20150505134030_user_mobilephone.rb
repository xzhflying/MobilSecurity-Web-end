class Mobilephone < ActiveRecord::Migration
  def change
    create_table(:user_mobilephones) do |t|
      t.integer :user_id, null: false, foreign_key: { references: :users }
      t.string :mobileinfo
      t.string :devicename
      t.string :onceID
      t.integer :state

      t.timestamps
    end

    add_index :user_mobilephones, :user_id
  end
end
