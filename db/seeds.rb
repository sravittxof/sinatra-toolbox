User.create(first_name: "Travis", last_name: "Fox", department: "Operations", position: "the big boss")

Job.create(reference_number: 1, complete: false, description: "fix thing one", summary: "take things apart. fix. put back together.")

Tool.create(reference_number: 1, returned: true, tool_description: "Screwdriver - Flathead")

Tool.create(reference_number: 2, returned: true, tool_description: "Hammer")

Job_Tool.create(job_id: Job.first.id, tool_id: Tool.first.id)