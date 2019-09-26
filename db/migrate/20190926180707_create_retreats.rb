class CreateRetreats < ActiveRecord::Migration[5.2]
  def change
    create_table :retreats do |t|
      t.string :name
      t.string :location
      t.text :description
      t.string :host
      t.string :host_contact
      t.integer :price
      t.string :photo
      t.references :thread_admins, foreign_key: true

      t.timestamps
    end
  end
end
