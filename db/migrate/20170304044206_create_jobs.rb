class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :position
      t.string :location
      t.string :description
      t.string :app_link
      t.date :date_applied
      t.integer :status
      t.string :note
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
