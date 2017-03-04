class CreateUpdates < ActiveRecord::Migration[5.0]
  def change
    create_table :updates do |t|
      t.date :u_date
      t.string :note
      t.references :job, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
