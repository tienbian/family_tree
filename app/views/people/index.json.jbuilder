json.array!(@people) do |person|
  json.extract! person, :id, :first_name, :last_name, :gender_id, :date_of_birth, :place_of_birth, :other_details
  json.url person_url(person, format: :json)
end
