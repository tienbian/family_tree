json.array!(@relationship_types) do |relationship_type|
  json.extract! relationship_type, :id, :description
  json.url relationship_type_url(relationship_type, format: :json)
end
