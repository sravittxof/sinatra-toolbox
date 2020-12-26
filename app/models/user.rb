class User  < ActiveRecord::Base
    has_many :jobs
    
    #validates :password, confirmation: true
    #The above line should be used when there are two text fields that should receive exactly the same content (example - confirm you password)
    #In vew template we wouuld use the two lines below, for example
    # <%= text_field :person, :email %>
    # <%= text_field :person, :email_confirmation %>
end