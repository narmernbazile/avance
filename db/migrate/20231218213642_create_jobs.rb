class CreateJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :jobs do |t|
      t.integer :jobID
      t.string :company
      t.string :location
      t.string :status
      t.string :deadline
      t.string :next

      t.timestamps
    end
  end
end
