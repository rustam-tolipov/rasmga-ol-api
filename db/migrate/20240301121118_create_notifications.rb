class CreateNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :notifications do |t|
      t.references :user, null: false, foreign_key: true
      t.text :message
      t.boolean :read, default: false
      t.integer :post_id
      t.integer :comment_id
      t.string :thumb
      t.integer :sender_id
      t.integer :receiver_id
      t.string :username
      t.string :avatar

      t.timestamps
    end
  end
end
