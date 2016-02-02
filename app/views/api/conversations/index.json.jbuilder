json.min @offset
json.max @offset + @conversations.length
json.total @num_con
json.page_number @page_number

json.conversations do
  json.array!(@conversations) do |conversation|
    json.extract! conversation, :id, :starred, :important, :title, :message_timestamp, :read

    last_message = conversation.messages.order(:updated_at).last

    json.address last_message.source_address
    json.timestamp last_message.updated_at
    json.body_preview "- " + last_message.body[0..77]
  end
end
