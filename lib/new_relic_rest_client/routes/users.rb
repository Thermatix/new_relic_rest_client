module NRRC
	module Routes
		class Users
			extend Helpers
			extend Common
			extend Common::Metrics
			extend Common::Unsafe
			extend Common::New
			URL_BASE = "#{Base}/users"

			class << self
				def reset_password id, data
					make_request(create_action[:url] =  "#{url id}/reset_password.json")
				end
			end
		end
	end
end