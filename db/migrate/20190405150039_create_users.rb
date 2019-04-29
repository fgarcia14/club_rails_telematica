class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, id: false do |t|
      t.string :usuario, primary_key: true
      t.string :contrasena
      t.string :nombre

    end
  end
end
