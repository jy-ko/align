class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.references :centre, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
