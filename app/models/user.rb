class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tweets, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :name, presence: true
  validates :profile, length: { maximum: 200 }
  mount_uploader :image, ImageUploader
       
  

end
