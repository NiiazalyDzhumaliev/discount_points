class AddPointToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :point, :integer, :default => 1000
  end
end
