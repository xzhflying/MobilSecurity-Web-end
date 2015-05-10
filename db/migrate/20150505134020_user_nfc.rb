class Nfc < ActiveRecord::Migration
  def change
    create_table(:user_nfcs) do |t|
      t.integer :user_id, null: false, foreign_key: { references: :users }
      t.string :devicename
      t.string :nfcinfo
      t.integer :state

      t.timestamps
    end

    add_index :user_nfcs, :user_id
  end
end
