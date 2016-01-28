json.array!(@conversations) do |conversation|
  last_message = conversation.messages.order(:time_created).last
  json.last_message do
    json.extract! last_message, :source_address, :starred, :important, :id
    json.time_sent last_message.time_created
    json.body_preview "- " + last_message.body.chars.take(130).join
  end

  json.title conversation.messages.order(:time_created).first.title
end
