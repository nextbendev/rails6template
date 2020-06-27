json.extract! note, :id, :name, :email, :msg, :created_at, :updated_at
json.url note_url(note, format: :json)
