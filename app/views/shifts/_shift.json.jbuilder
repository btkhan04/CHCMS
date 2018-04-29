json.extract! shift, :id, :title, :description, :start_time, :end_time, :created_at, :updated_at
json.url shift_url(shift, format: :json)

json.id shift.id
json.title shift.title
json.description shift.description
json.start shift.start_time
json.end shift.end_time

json.update_url shift_path(shift, method: :patch)
json.edit_url edit_shift_path(shift)