json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :sex, :race, :age, :vaccinated, :information, :state, :pet_type_id, :user_id
  json.url pet_url(pet, format: :json)
end
