class JobTool  < ActiveRecord::Base
    belongs_to :job, class_name: "Job"
    belongs_to :tool, class_name: "Tool"
end