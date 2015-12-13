json.array!(@courses) do |course|
  json.extract! course, :id, :name, :description, :author, :duration, :level, :rating, :released
  json.url course_url(course, format: :json)
end
