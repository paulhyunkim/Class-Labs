class Page < ActiveRecord::Base

	def self.party(movie)
		# If no movie specified, use The Matrix
		movie ||= "matrix"

		# Authentication key for rotton tomatoes -- put yours in:
		auth = { query: { apikey: 'jmpk497yx9exunjd86y7pth4', q: movie }} # Adds to end of URL ?apikey=<YOURKEY>&q=<MOVIE>
		search_url = "http://api.rottentomatoes.com/api/public/v1.0/movies.json"
		
		response = HTTParty.get search_url, auth

		response.parsed_response["movies"]
		
	end
end
