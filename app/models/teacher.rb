class Teacher < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :students
  has_one :teacher_profile, dependent: :destroy
  has_one :card, dependent: :destroy
  has_many :chats
  has_many :favorites
end
