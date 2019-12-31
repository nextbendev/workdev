class AddOrderToBlocks < ActiveRecord::Migration[6.0]
  def change
    add_column :blocks, :order, :integer
  end
end
