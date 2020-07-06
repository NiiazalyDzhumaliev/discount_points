class AddAuthorIdToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions, :author_id, :integer
  end
end
