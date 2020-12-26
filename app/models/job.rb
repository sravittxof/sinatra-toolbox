class Job  < ActiveRecord::Base
    has_many :job_tools, class_name: 'JobTool'
    has_many :tools, through: :job_tools
    belongs_to :user
    validates_associated :job_tools
    #This line calls '.valid?' on associated objects. It should not be used on both ends of the association as that would cause an infinite loop.
end