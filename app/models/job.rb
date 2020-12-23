class Job  < ActiveRecord::Base
    has_many :jobs_tools
    has_many :tools, through: :jobs_tools
    belongs_to :user
end