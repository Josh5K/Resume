class CreateJobDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :job_descriptions do |t|
      t.text :desc
      t.string :job_id

      t.timestamps
    end
  end
end
