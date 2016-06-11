json.array!(@varunscaffolds) do |varunscaffold|
  json.extract! varunscaffold, :id
  json.url varunscaffold_url(varunscaffold, format: :json)
end
