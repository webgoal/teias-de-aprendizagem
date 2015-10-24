class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.integer :roles_mask
      t.references :learning_propositions_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
