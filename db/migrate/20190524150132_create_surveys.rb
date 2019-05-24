class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys, id: false do |t|
      t.string :user, primary_key: true
      t.integer :pre1
      t.integer :pre2
      t.integer :pre3
      t.integer :pre4
      t.integer :pre5
    end
  end
end
