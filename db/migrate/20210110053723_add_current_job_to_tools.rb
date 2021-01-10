class AddCurrentJobToTools < ActiveRecord::Migration
  def change
    add_column :tools, :currentjob, :integer
  end
end
