class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #even though this is a has_one relationship, we will still keep track of all the previous avatars the user has had, but by setting has_one, when 'current_user.avatar' is called, only the last will be displayed
  has_one :avatar
end
