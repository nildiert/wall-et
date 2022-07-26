class Entrance < ApplicationRecord

  after_create_commit :add_current_amount

  belongs_to :user

  def add_current_amount
    current_amount= amount
  end

end
