
json.title @conversation.title
json.messages do
  json.array! @messages do |message|
    json.partial! 'api/shared/message', message: message
  end
end
