class Post < ApplicationRecord
    belongs_to :user #post pripada userju, tukaj bo user_id
    acts_as_commontable dependent: :destroy #dependent: :destroy -> pomeni da če zbrisemo userja se zbrisejo tudi njegovi kometarji...

    validates :title, presence: true
    validates :body, presence: true
end
