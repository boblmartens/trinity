class AddSeasonColumnToService < ActiveRecord::Migration
  def self.up
    add_column :services, :season_id, :integer
  end

  def self.down
    remove_column :services, :season_id
  end
end
