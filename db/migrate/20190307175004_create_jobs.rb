class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :title
      t.date :start_date
      t.date :end_date
      t.string :image
      t.string :address
      t.integer :self_id

      t.timestamps
    end
  end
end
