class AddUserIdAndRemoveOtherAndSeasonFromServicesModel < ActiveRecord::Migration
  def self.up
    remove_column :services, :other
    remove_column :services, :season
    add_column  :services, :user_id, :integer
  end

  def self.down
    add_column :services, :other, :text
    add_column :services, :season, :string
    remove_column :services, :user_id
  end
end
