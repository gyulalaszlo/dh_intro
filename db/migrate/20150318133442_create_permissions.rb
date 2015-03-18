class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.string :name

      t.integer :permittable_id
      t.string  :permittable_type

      t.timestamps
    end

    add_index :permissions, :permittable_id

  end
end
