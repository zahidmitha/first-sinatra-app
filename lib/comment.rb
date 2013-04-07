class Comment
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :comment, String
  property :time, Time.now

end