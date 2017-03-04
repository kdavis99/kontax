class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :company
      t.string :position
      t.string :note
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end
