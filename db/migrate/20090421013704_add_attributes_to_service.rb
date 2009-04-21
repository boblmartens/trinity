class AddAttributesToService < ActiveRecord::Migration
  def self.up
    add_column :services, :description, :text
    add_column :services, :season, :text
    add_column :services, :other, :text
  end

  def self.down
    remove_column :services, :description
    remove_column :services, :season
    remove_column :services, :other
  end
end
