json.array!(@carolina_panthers) do |carolina_panther|
  json.extract! carolina_panther, :id, :last_name, :first_name, :number, :position, :years_pro
  json.url carolina_panther_url(carolina_panther, format: :json)
end
