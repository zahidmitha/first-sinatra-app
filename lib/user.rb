class User
  include DataMapper::Resource
  has n, :comments

  property :id,         Serial    # An auto-increment integer key
  property :first_name,      String    # A varchar type string, for short strings
  property :last_name,       String      # A text block, for longer string data.
  property :socialsecurity,  String
  property :commitment, String

end