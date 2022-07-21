#email:string
#password_digest:string

#password:string virtual
#password_confirmation:string virtual

class User < ApplicationRecord
    has_secure_password

    has_many :playlist

    validates :email, presence: true, 
    format: { with: /\A[^\s@]+@[^\s@]+.[^\s@]{2,}\z/, message:"must be a valid email address to register." }
end
