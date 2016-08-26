class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.references :student, index: true
      t.integer :status
      t.references :ticket, index: true
      t.boolean :paid

      t.timestamps
    end
  end
end
