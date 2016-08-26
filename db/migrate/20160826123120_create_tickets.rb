class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.integer :entries
      t.datetime :valid_until
      t.boolean :unlimited
      t.references :student, index: true

      t.timestamps
    end
  end
end
