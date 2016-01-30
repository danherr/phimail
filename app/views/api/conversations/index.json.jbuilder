json.array!(@conversations) do |conversation|
  json.extract! conversation, :id, :starred, :important, :title, :message_timestamp

  last_message = conversation.messages.order(:updated_at).last

  json.address last_message.source_address
  json.timestamp last_message.updated_at
  json.body_preview "- " + last_message.body.chars.take(200).join
end
