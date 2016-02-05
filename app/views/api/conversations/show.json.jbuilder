last_id = @messages.last.id
json.extract! @conversation, :title, :important, :starred, :read, :id
json.expanded true

last_non_draft_id = @messages.select{|message| message.sent}.last.id

json.messages do
  json.array! @messages do |message|

    json.partial! 'api/shared/message', message: message, full_message: (message.id == last_id)

    json.last_non_draft (message.id == last_non_draft_id)
  end
end
