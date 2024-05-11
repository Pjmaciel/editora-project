class Account < ApplicationRecord
  belongs_to :supplier
  before_validation :calculate_and_set_checksum, on: :create

  private

  def calculate_and_set_checksum
    self.checksum = calculate_checksum(self.account_number)
  end

  def calculate_checksum(account_number)
    account_number.chars.map(&:to_i).sum
  end

end
