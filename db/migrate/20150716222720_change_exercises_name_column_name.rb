class ChangeExercisesNameColumnName < ActiveRecord::Migration
  def change
    remove_column :exercises, :name
    add_column :exercises, :exercise_name, :string
  end
end
