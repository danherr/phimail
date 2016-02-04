json.title @conversation.title
json.conversation_id @conversation.id

json.partial! '/api/shared/message', message: @message, full_message: true
