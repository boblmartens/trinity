class CreateChurches < ActiveRecord::Migration
  def self.up
    create_table :churches do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end

  def self.down
    drop_table :churches
  end
end
