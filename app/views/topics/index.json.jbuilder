json.array!(@topics) do |topic|
  json.extract! topic, :id, :title, :topicduration, :done, :course_id
  json.url topic_url(topic, format: :json)
end
