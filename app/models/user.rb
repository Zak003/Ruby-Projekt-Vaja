class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  acts_as_commontator
  has_many :posts, dependent: :destroy #on(uporabnik) ima mnogo postov, tukaj pa nebo post_id, ampak bo vedu kako iskat. dependent: :destroy-> ko zbrišemo userja bo izbirsalo tudi use post-e
end
