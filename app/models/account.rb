class Account < ApplicationRecord
  belongs_to :supplier

  validates :account_number, presence: true
  validate :checksum_must_be_correct

  def calculated_checksum
    Modulo10.calculate_checksum(account_number.to_s)
  end

  private

  def checksum_must_be_correct
    if checksum.to_i != calculated_checksum
      errors.add(:checksum, "Dígito verificador incorreto")
    end
  end

  def self.ransackable_attributes(auth_object = nil)
    [:account_number]
  end
end
