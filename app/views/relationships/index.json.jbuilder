json.array!(@relationships) do |relationship|
  json.extract! relationship, :id, :family_id, :person_1_id, :person_2_id, :relationship_type_id, :role_1_id, :role_2_id, :date_started, :date_ended, :other_details
  json.url relationship_url(relationship, format: :json)
end
