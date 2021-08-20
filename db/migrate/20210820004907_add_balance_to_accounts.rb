class AddBalanceToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :balance, :decimal, precision: 8, scale: 2, default: 500.00
  end
end