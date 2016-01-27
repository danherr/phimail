json.array!(@conversations) do |conversation|
  message = conversation.messages.order(created: :desc).first
  json.extract message, :source_address, :title, :body, :created
end
