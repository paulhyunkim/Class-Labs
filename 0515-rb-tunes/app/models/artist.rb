class Artist
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :genre, type: String

  has_many :albums
  has_many :songs

end
