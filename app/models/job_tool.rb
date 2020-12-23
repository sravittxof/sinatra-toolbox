class Job_Tool  < ActiveRecord::Base
    belongs_to :jobs
    belongs_to :tools
end