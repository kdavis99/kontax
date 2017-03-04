class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.datetime :s_time
      t.datetime :e_time
      t.string :name
      t.string :address
      t.string :note
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
