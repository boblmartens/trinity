class RenameAttachmentTable < ActiveRecord::Migration
  def self.up
    rename_table :attachments, :attached_files
  end

  def self.down
    rename_table :attached_files, :attachments
  end
end
