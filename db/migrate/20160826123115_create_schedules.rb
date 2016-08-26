class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :room, index: true

      t.timestamps
    end
  end
end
