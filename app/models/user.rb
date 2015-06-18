class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :firstname, presence: true
  validates :lastname, presence: true

  has_many :reviews
  has_many :products

  def member_since
    created_at.strftime("%B %e, %Y")
  end
end
