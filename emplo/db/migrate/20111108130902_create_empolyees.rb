class CreateEmpolyees < ActiveRecord::Migration
  def change
    create_table :empolyees do |t|
      t.string :firstname
      t.string :lastname
      t.date :birthday
      t.string :email
      t.text :comment

      t.timestamps
    end
  end
end
