class Comment < Neo4j::Rails::Model
  property :name, :type => String
  property :body, :type => String
  # If this property is defined it will automatically contain the Time the comment was created, like ActiveRecord
  property :created_at

  # Declare an incoming relationship method accessor so we can navigate the other direction of the comment relationship
  # This is not really needed in this example
  has_one(:post).from(:comments)
end
