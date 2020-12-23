class RenameJobsToolsToJobTools < ActiveRecord::Migration
  def change
    rename_table :jobs_tools, :job_tools
  end
end
