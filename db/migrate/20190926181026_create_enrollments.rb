class CreateEnrollments < ActiveRecord::Migration[5.2]
  def change
    create_table :enrollments do |t|
      t.boolean :enrolled
      t.references :users, foreign_key: true
      t.references :retreats, foreign_key: true

      t.timestamps
    end
  end
end
