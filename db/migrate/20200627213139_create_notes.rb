class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :name
      t.string :email
      t.string :msg

      t.timestamps
    end
  end
end
