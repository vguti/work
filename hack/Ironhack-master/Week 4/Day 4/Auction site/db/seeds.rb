25.times.each do |index|
	User.create(
		name: "User #{index}",
		email: "#{index}@gmail.com"
	)
end

25.times.each do |index|
	Product.create(
		title: "Product #{index}",
		deadline: "Deadline #{index}",
		description: "Description of my amazing product of the year what is an incredible... #{index}"
	)
end