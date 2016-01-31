json.extract! message, :id, :source_address, :target_address, :updated_at

trimmed_body = (full_message ? message.body : message.body[0..77])

json.body trimmed_body
json.body_is_full trimmed_body.length == message.body.length
