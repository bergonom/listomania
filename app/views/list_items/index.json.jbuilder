json.array!(@list_items) do |list_item|
  json.extract! list_item, :id, :title, :description, :list_id
  json.url list_item_url(list_item, format: :json)
end
