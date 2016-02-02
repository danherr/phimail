last_id = @messages.last.id
json.extract! @conversation, :title, :important, :starred, :read, :id
json.expanded true
json.messages do
  json.array! @messages do |message|

    json.partial! 'api/shared/message', message: message, full_message: (message.id == last_id)
  end
end
