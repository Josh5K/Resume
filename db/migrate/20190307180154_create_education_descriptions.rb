class CreateEducationDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :education_descriptions do |t|
      t.text :desc
      t.string :education_id

      t.timestamps
    end
  end
end
