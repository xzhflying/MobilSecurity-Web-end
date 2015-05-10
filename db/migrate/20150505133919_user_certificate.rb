class Certificate < ActiveRecord::Migration
  def change
    create_table(:user_certificates) do |t|
      t.integer :user_id, null: false, foreign_key: { references: :users }
      t.string :devicename
      t.string :cainfo
      t.integer :state

      t.timestamps
    end

    add_index :user_certificates, :user_id
  end
end
