class User < ApplicationRecord
    validates :email, presence: true
    has_many :leaves, class_name: 'Leave'
    belongs_to :role
    #has_secure_password :password
end
