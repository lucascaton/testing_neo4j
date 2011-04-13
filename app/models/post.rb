class Post < Neo4j::Rails::Model
  # You don't need to specify the type of the property
  # Here it only works as documentation - sets an expectation
  property :title, :type => String
  property :body, :type => String

  #Declare an outgoing relationship accessor method to any other node (!)
  has_n :comments
end
