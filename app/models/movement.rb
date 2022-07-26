class Movement < ApplicationRecord
  belongs_to :category
  belongs_to :entrance

  enum kind: {
    entrance: 0,
    expense: 1
  }
end
