class Tool  < ActiveRecord::Base
    has_many :job_tools
    has_many :jobs, through: :job_tools
end