class SorceryCore < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email,            null: false
      t.string :name
      t.string :address
      t.string :crypted_password
      t.string :salt
      t.string :access_token
      t.boolean :status, default: false
      t.timestamps                null: false
    end

    add_index :users, :email, unique: true
  end
end
