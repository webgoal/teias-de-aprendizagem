class AddPasswordToLearningProposition < ActiveRecord::Migration
  def change
    add_column :learning_propositions, :password, :string
  end
end
