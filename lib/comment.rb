class Comment
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :comment, String

  belongs_to :user, :required => false

end