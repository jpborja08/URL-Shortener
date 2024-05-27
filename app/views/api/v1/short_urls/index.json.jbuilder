json.key_format! camelize: :lower

json.urls @urls do |url|
  json.id url.id
  json.original_url url.original_url
  json.short_url url.short_url
  json.token url.token
  json.clicks url.clicks
end
