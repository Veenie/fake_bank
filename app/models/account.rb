class Account < ApplicationRecord
  belongs_to :user
  has_many :transactions

  def balance
    self.transactions.sum(:amount)
  end


end
