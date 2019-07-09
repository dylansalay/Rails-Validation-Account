class Account < ApplicationRecord

    has_many :addresses

    validates :password, :username, uniqueness: true
    validates :username, presence: true
    validates :username, length: { minimum: 5 }
    validates :password, length: { minimum: 6}
    validates :email, presence: true, email: true
    validates :password, presence: true, password: true

end
