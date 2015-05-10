class CreatePendings < ActiveRecord::Migration
  def change
    create_table :pendings do |t|
      t.integer :user_id, null: false, foreign_key: { references: :users }
      t.string :action
      t.string :qr
      t.string :qr_uid
      t.string :obj_type
      t.integer :obj_id
      t.boolean :enable

      t.timestamps null: false
    end
  end
end
