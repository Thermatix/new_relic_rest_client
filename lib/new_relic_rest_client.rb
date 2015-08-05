nrrc_root = File.expand_path('..', __FILE__)

require "new_relic_rest_client/version"
require "new_relic_rest_client/route_helpers"
require "new_relic_rest_client/common_routes"


Dir["#{nrrc_root}/new_relic_rest_client/routes/*.rb"].each do |file|
	require  file
end


module NRRC
 	class << self
 		def api_key= key
 			Routes.api_key = key
 		end

 	end
end
