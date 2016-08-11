class CreateVersions < ActiveRecord::Migration[5.0]
  def change
    create_table :versions do |t|
      t.string :number
      t.string :os
      t.string :libs, array:true
      t.references :package

      t.timestamps
    end
    add_index :versions, :libs, using: 'gin'
    add_index :versions, [:number, :os]
  end
end
