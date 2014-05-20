class Album
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :platinum, type: Mongoid::Boolean
  has_many :songs
  belongs_to :artist

end
