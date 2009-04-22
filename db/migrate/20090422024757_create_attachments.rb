class CreateAttachments < ActiveRecord::Migration
  def self.up
    create_table :attachments do |t|
      t.string :name
      t.integer :user_id
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :attachments
  end
end
