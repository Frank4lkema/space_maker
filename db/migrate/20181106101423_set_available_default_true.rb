class SetAvailableDefaultTrue < ActiveRecord::Migration[5.2]
  def change
    change_column :spaces, :available, :boolean, :default => true
  end
end
