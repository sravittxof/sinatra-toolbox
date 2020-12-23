class Tool  < ActiveRecord::Base
    has_many :jobs_tools
    has_many :jobs, through: :jobs_tools
end