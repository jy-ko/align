class DeleteInstructorsTable < ActiveRecord::Migration[5.2]
  def change
    remove_reference :workshops, :instructor, foreign_key: true
    drop_table :instructors
  end
end
