50.times do |i|
  Task.find_or_create_by!(name: "Task #{i}", description: "Description #{i}")
  User.find_or_create_by!(name: "User #{i}", email: "user#{i}@example.com")
end
