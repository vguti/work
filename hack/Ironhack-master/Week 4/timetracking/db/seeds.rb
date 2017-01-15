25.times.each_with_index do |projects, index|
	project = Project.create(
		name: "Project number #{index}",
		description: "This is my project number #{index}"

	)

	# Add project a time_entry
	# Using: project.time_entries.create OR project.time_entries.new
	project.time_entries.create(
		date: Date.today - rand(10).days,
		hours: rand(24),
		minutes: rand(60)
	)
end