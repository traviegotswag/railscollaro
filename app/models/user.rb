class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, authentication_keys: [:email]

  validates :email, presence: true
  validates :password, presence: true
# validates :password, presence: true, length: { minimum: 5, maximum: 20 }

  has_one :profile
  # before_create :build_profile
  # accepts_nested_attributes_for :profile

  has_many :orders  
  has_many :styles
  has_many :measurements

end

