class CreateEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :educations do |t|
      t.string :school
      t.string :address
      t.string :certificate
      t.date :start_date
      t.date :end_date
      t.string :program
      t.integer :self_id
      t.string :image

      t.timestamps
    end
  end
end
