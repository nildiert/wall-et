class Entrance < ApplicationRecord

  after_create_commit :add_current_amount

  belongs_to :user
  has_many :movements

  def add_current_amount
    self.current_amount= self.amount
    self.save
  end

end
