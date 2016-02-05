json.min @offset
json.max @offset + @conversations.length
json.total @num_con
json.page_number @page_number

json.conversations do
  json.array!(@conversations) do |conversation|
    last_message = conversation.messages.order(:updated_at).last
    if last_message
      json.extract! conversation, :id, :starred, :important, :title, :message_timestamp, :read, :sent, :received

      addresses = last_message.target_address.split(', ')
      addresses.push(last_message.source_address)

      json.num_messages conversation.messages.count
      json.addresses addresses
      json.timestamp last_message.updated_at
      json.body_preview "- " + last_message.body[0..77]

      if @drafts
        json.draft true
        json.last_message do
          json.partial! 'api/shared/message', message: last_message, full_message: true
        end
      end

    end
  end
end
