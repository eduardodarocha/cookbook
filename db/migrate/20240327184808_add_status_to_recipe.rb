class AddStatusToRecipe < ActiveRecord::Migration[7.1]
  def change
    add_column :recipes, :status, :integer
  end
end
