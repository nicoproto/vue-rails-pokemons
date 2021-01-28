json.extract! @pokemon, :id, :name, :location
json.comments @pokemon.comments do |comment|
  json.extract! comment, :id, :content
  json.user do
    json.id comment.user.id
    json.email comment.user.email
  end
end