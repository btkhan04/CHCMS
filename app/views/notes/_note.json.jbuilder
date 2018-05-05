json.extract! note, :id, :name, :description, :food_intake, :fluid_intake, :medicine, :created_at, :updated_at
json.url note_url(note, format: :json)
