class Post < ApplicationRecord
    belongs_to :user #post pripada userju, tukaj bo user_id
    acts_as_commontable dependent: :destroy #dependent: :destroy -> pomeni da če zbrisemo userja se zbrisejo tudi njegovi kometarji...

    validates :title, presence: true
    validates :body, presence: true

    has_one_attached :image

    #naredimo novo funkcijo
    def self.posted #ker damo self pomeni da dela na podlagi useh postov
        where('scheduled_for < ? OR scheduled_for IS NULL', DateTime.now) #izpiše nam datume ki so manjši od današnjega(pretekli) oz. tiste ki sploh nimajo datuma
    end
end
