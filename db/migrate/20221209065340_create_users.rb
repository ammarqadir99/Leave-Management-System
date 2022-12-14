class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
     #t.string :username
      t.string :email
     #t.text :password
      t.string :password_digest
      t.string :role
      t.integer :contact
      t.text :image  
      t.timestamps
    end
  end
end
