class Job  < ActiveRecord::Base
    has_many :job_tools
    has_many :tools, through: :job_tools
    belongs_to :user
end