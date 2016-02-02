last_id = @messages.last.id

json.title @conversation.title
json.important @conversation.important
json.expanded true
json.read @conversation.read
json.messages do
  json.array! @messages do |message|

    json.partial! 'api/shared/message', message: message, full_message: (message.id == last_id)
  end
end
