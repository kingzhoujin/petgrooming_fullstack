class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def admin?
    is_admin
  end

  has_many :orders
  has_many :comments
  has_many :reviews

  has_many :blogs
  has_many :messages
  
  has_many :appointments

end
