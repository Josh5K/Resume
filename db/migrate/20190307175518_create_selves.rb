class CreateSelves < ActiveRecord::Migration[5.2]
  def change
    create_table :selves do |t|
      t.string :name
      t.string :address
      t.string :postal_code
      t.integer :phone_number
      t.string :email
      t.string :city
      t.text :about
      t.string :image
      t.string :background

      t.timestamps
    end
  end
end
