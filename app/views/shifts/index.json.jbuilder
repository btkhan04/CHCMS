json.array! @shifts, partial: 'shifts/shift', as: :shift
json.array! @shifts do |shift|
  json.id shift.id
  json.title shift.title
  json.description shift.description
  json.start shift.start_time
  json.end shift.end_time
  json.update_url shift_path(shift, method: :patch)
  json.edit_url edit_shift_path(shift)
end