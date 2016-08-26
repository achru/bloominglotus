class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.references :user, index: true
      t.string :name

      t.timestamps
    end
  end
end
