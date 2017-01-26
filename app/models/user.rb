class User < ApplicationRecord
  has_many :messages
  has_many :comments

  has_many :games

  def login=(login)
    @login = login
  end

  def login
    @login || self.username || self.email
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]
end
