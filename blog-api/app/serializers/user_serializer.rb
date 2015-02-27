class UserSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :comments, except: [:user]
  has_many :posts, except: [:user, :comments, :body]
end
