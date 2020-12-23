class Job_Tool  < ActiveRecord::Base
    belongs_to :job
    belongs_to :tool
end