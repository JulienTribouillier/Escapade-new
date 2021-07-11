# frozen_string_literal: true

# Remove all data
Post.destroy_all

# Create Posts
10.times do |i|
  Post.create!(
    title: "Title #{i}",
    content: "This is a description for the titre #{i}"
  )
end

puts "All posts were created !"


