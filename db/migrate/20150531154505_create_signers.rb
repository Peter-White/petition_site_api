class CreateSigners < ActiveRecord::Migration
  def change
    create_table :signers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.text :address
      t.string :email
      t.text :quote

      t.timestamps null: false
    end
  end
end
