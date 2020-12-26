User.find_or_create_by(first_name: "Travis", last_name: "Fox", department: "Operations", position: "the big boss")

Job.find_or_create_by(reference_number: 1, complete: false, description: "fix thing one", summary: "take things apart. fix. put back together.")

Tool.find_or_create_by(reference_number: 1, returned: true, tool_description: "Screwdriver - Flathead")

Tool.find_or_create_by(reference_number: 2, returned: true, tool_description: "Hammer")

#JobTool.find_or_create_by(job_id: Job.first.id, tool_id: Tool.first.id)