class CreateWorkshops < ActiveRecord::Migration[5.2]
  def change
    create_table :workshops do |t|
      t.integer :capacity
      t.references :centre, foreign_key: true
      t.references :instructor, foreign_key: true
      t.datetime :date
      t.string :title

      t.timestamps
    end
  end
end
