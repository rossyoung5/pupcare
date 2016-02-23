json.array!(@dogs) do |dog|
  json.extract! dog, :id, :name, :dob, :breed_id, :med_conditions, :vet_id, :daycare_resident
  json.url dog_url(dog, format: :json)
end
