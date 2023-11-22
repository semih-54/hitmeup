class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :hitman
  has_many :contracts
  has_many :contracts_as_hitman, through: :hitman, source: :contracts
  # has_one_attached :photo

  def hitman?
    !hitman.nil?
  end
end
