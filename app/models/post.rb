class Post < Neo4j::Rails::Model
  property :title, :type => String
  property :body, :type => String

end
