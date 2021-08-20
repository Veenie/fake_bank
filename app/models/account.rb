class Account < ApplicationRecord
  belongs_to :user
  has_many :transactions


  after_initialize :default_values
 
  def default_values

    self.balance ||= 500.00
  end

  def balance
    self.transactions.sum(:amount)
  end


end
