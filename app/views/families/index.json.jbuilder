json.array!(@families) do |family|
  json.extract! family, :id, :person_id, :name, :description, :date_from, :date_to, :other_details
  json.url family_url(family, format: :json)
end
