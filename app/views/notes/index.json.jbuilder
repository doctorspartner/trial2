json.array!(@notes) do |note|
  json.extract! note, :note, :contact_id, :user_id
  json.url note_url(note, format: :json)
end
