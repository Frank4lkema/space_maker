class AddDescriptionToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :description, :string
  end
end
