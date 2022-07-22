class Playlist < ApplicationRecord
    # validates :user_id, presence: true
    # belongs_to :user
    validates :title, presence: true
    validates :description, presence: true
    has_many :musics, dependent: :destroy

    include Visible

end
