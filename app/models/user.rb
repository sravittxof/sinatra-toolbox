class User  < ActiveRecord::Base
    has_many :jobs
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true    
end