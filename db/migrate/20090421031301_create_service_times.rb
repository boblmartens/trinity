class CreateServiceTimes < ActiveRecord::Migration
  def self.up
    create_table :service_times do |t|
      t.date :service_date
      t.time :service_time
      t.integer :service_id

      t.timestamps
    end
  end

  def self.down
    drop_table :service_times
  end
end
