# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Creating jobs..."
Job.create!([
  { title: "Software Engineer", company: "Google", status: "Applied", notes: "Applied through LinkedIn" },
  { title: "Data Analyst", company: "Facebook", status: "Interviewing", notes: "Interview scheduled for next week" },
  { title: "Project Manager", company: "Microsoft", status: "Rejected", notes: "Rejected after first interview" }
])
puts "Jobs created successfully!"
