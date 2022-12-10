class BirdSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :image_url, :likes, :adventure_id
end
