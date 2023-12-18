class CreateApplications < ActiveRecord::Migration[7.1]
  def change
    create_table :applications do |t|
      t.integer :appID
      t.string :company
      t.string :location
      t.string :status
      t.string :deadline
      t.string :next

      t.timestamps
    end
  end
end
