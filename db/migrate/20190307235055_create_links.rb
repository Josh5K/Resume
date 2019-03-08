class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :key
      t.string :source
      t.integer :self_id

      t.timestamps
    end
  end
end
