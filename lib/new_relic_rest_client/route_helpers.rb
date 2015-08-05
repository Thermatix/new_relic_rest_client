require 'rest-client'

module NRRC
	module Routes
		class << self
			attr_accessor :api_key
		end
		Base = 'https://api.newrelic.com/v2/'
		module Helpers
			def deep_copy(object)
				Marshal.load(Marshal.dump(object))
			end

			def url id
				"#{URL_BASE}/%s" % [id]
			end

			def get_action
				 deep_copy({ 
					method: :get,
					headers: {
						:"X-Api-Key" => Routes.api_key,
					}
				})
			end

			def put_action
				deep_copy({
					method: :put,
					headers: {
						:"X-Api-Key" => Routes.api_key,
						content_type: :json,	
					}
				})
			end

			def delete_action
				deep_copy({
					method: :delete,
					headers: {
						:"X-Api-Key" => Routes.api_key,
					}
				})
			end

			def create_action
				deep_copy({
					method: :post,
					headers: {
						:"X-Api-Key" => Routes.api_key,
						content_type: :json,	
					}
				})
			end
			private 

			def make_request request_hash
				::RestClient::Request.execute request_hash
			end

		end
	end	
end