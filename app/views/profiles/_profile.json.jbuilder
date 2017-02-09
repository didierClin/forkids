json.extract! profile, :id, :lastname, :firstname, :birth_date, :gender, :street, :city, :postcode, :country, :created_at, :updated_at
json.url profile_url(profile, format: :json)
