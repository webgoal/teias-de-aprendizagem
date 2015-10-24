class AlterTableLearningPropostionAddColumnDescription < ActiveRecord::Migration
  def change
    add_column :learning_propositions, :description, :string
  end
end
