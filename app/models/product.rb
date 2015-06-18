class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  validates :title, presence: true
  validates :price, presence: true, format: { :with => /\A\d+(?:\.\d{0,2})?\z/ }
  validates :description, presence: true

  def average_rating
    self.reviews.average(:rating).round(2) if self.reviews.count != 0
  end
end
