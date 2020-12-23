class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :reference_number
      t.boolean :complete
      t.string :description 
      t.string :summary
      t.timestamps :start_date_time
      t.timestamps :finish_date_time
      t.belongs_to :user
    end
  end
end
