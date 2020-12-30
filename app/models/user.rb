class User  < ActiveRecord::Base
    has_many :jobs
    has_secure_password    
    #validates :password, confirmation: true
    #The above line should be used when there are two text fields that should receive exactly the same content (example - confirm you password)
    #In vew template we wouuld use the two lines below, for example
    # <%= text_field :person, :email %>
    # <%= text_field :person, :email_confirmation %>
    # This check is performed only if email_confirmation is not nil. To require confirmation, make sure to add a presence check for the confirmation attribute (we'll take a look at presence later on this guide):
    # class Person < ActiveRecord::Base
    #     validates :email, confirmation: true
    #     validates :email_confirmation, presence: true
    #   end
    # DO NOT USE 'validates: ...' because the 'has_secure_method' password does this for you, and using both will cause a conflict.
end