class Book < ApplicationRecord
  belongs_to :author

  validates :ISBN, presence: true, uniqueness: true, length: { is: 13 },
            format: { with: /\A\d{13}\z/, message: "deve conter 13 digitos" }
end
