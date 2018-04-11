class CreatePacients < ActiveRecord::Migration[5.0]
  def change
    create_table :pacients do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :id_number
      t.string :phone
      t.string :email
      t.integer :age, null: false
      t.references :gender
      t.string :record_number, null: false
      t.boolean :pacient_active, null: false, dafault: true

      t.timestamps
    end
    add_foreign_key :pacients, :genders
  end
end
