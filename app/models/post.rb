class Post < ApplicationRecord

    belongs_to :user #post pripada userju, tukaj bo user_id

    validates :title, presence: true
    validates :body, presence: true
end
