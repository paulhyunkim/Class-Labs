class Beer
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :type, type: String
  field :brewer, type: String
  field :abv, type: Float
end
