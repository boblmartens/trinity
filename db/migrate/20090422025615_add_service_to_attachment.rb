class AddServiceToAttachment < ActiveRecord::Migration
  def self.up
    add_column :attachments, :service_id, :integer
  end

  def self.down
    remove_column :attachments, :service_id
  end
end
