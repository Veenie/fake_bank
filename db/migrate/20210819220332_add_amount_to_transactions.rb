class AddAmountToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions, :amount, :decimal, precision: 8, scale: 2
  end
end
