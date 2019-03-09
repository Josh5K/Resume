class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :link
      t.integer :self_id

      t.timestamps
    end
  end
end
