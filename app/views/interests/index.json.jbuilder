json.array!(@interests) do |interest|
  json.extract! interest, :id, :name, :email, :phone, :roles_mask, :learning_propositions_id_id
  json.url interest_url(interest, format: :json)
end
