class Playlist < ApplicationRecord
    # validates :user_id, presence: true
    validates :title, presence: true
    validates :description, presence: true

    has_many :musics

    belongs_to :user
end
