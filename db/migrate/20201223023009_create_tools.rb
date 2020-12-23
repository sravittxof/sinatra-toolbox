class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
    t.integer "reference_number"
    t.boolean "returned"
    t.string  "tool_description"
    end
  end
end
