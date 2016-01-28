json.array!(@conversations) do |conversation|
  message = conversation.messages.order(:time_created).last
  json.last_message do
    json.extract! message, :source_address, :title, :time_created
    json.body message.body.chars.take(80).join
  end
end
