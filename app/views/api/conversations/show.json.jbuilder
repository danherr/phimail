json.array! @messages do |message|
  json.partial! 'api/shared/message', message: message
end
