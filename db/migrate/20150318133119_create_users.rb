class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :status

      t.integer :role_id

      t.timestamps
    end
  end
end
