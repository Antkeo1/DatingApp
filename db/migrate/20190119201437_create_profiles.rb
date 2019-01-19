class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :occupation
      t.string :gender
      t.string :race
      t.text :interest
      t.text :hobbies
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
