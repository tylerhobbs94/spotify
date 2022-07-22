class Music < ApplicationRecord
  belongs_to :playlist

  include Visible
end
