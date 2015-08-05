require 'rest-client'

module NRRC
	module Routes
		class << self
			attr_accessor :api_key
		end
		Base = 'https://api.newrelic.com/v2'
		module Helpers
		
			def url id
				"#{@url_base}/%s" % [id]
			end

			def get_action with,params={}
				action = deep_copy({ 
					method: :get,
					headers: {
						:"X-Api-Key" => Routes.api_key
					}
				}).update(with)
				action[:headers].update(params: params)
				make_request(action)
			end

			def put_action with,params={}
				action = deep_copy({ 
					method: :put,
					headers: {
						:"X-Api-Key" => Routes.api_key,
						content_type: :json,
					}
				}).update(with)
				action[:headers].update(params: params)
				make_request(action)
			end

			def delete_action with,params={}
				action = deep_copy({ 
					method: :delete,
					headers: {
						:"X-Api-Key" => Routes.api_key
					}
				}).update(with)
				action[:headers].update(params: params)
				make_request(action)
			end

			def create_action with,params={}
				action = deep_copy({ 
					method: :post,
					headers: {
						:"X-Api-Key" => Routes.api_key,
						content_type: :json,
					}
				}).update(with)
				action[:headers].update(params: params)
				make_request(action)
			end
			private 

			def make_request request_hash
				puts request_hash
				::RestClient::Request.execute request_hash
			end

			def deep_copy(object)
				Marshal.load(Marshal.dump(object))
			end

		end
	end	
end