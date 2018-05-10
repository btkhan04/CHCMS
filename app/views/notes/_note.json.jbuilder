json.extract! note, :id, :name, :description, :food_intake, :fluid_intake, :medicine, :created_at, :updated_at, :user_id, :resident_id
json.url note_url(note, format: :json)
