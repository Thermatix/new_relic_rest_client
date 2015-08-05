
require "new_relic_rest_client/version"
require "new_relic_rest_client/route_helpers"
require "new_relic_rest_client/common_routes"

dir["new_relic_rest_client/routes/*.rb"].each do |file|
	autoload file
end

module NRRC
 	class << self
 		def set_api_key key
 			Routes.api_key = key
 		end

 	end
end
