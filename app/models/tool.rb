class Tool  < ActiveRecord::Base
    has_many :job_tools, class_name: 'JobTool'
    has_many :jobs, -> { distinct}, through: :job_tools
end