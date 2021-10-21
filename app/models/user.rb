class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts #on(uporabnik) ima mnogo postov, tukaj pa nebo post_id, ampak bo vedu kako iskat
end
