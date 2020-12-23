class CreateJobsTools < ActiveRecord::Migration
  def change
    create_table :jobs_tools do |t|
      t.belongs_to :job
      t.belongs_to :tool
    end
  end
end
