class Job  < ActiveRecord::Base
    has_many :job_tools, class_name: 'JobTool'
    has_many :tools, through: :job_tools
    belongs_to :user
end