class ChangeLoginCountToInteger < ActiveRecord::Migration
  def self.up
    change_column :users, :login_count, :integer
  end

  def self.down
    change_column :users, :login_count, :string
  end
end
