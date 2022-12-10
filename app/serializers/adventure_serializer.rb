class AdventureSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :image_url, :slug

  has_many :birds 
end
