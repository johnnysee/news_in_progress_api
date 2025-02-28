class Articles::ShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :lede, :body, :updated_at

  belongs_to :category, serializer: Categories::IndexSerializer
  has_many :authors, serializer: Users::AuthorsIndexSerializer
end
