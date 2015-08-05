module NRRC
	module Routes
		class Users
			extend Helpers
			extend Common
			@url_base = "#{Base}/users"

			class << self
				def reset_password id
					create_action(url:  "#{url id}/reset_password.json")
				end
			end
		end
	end
end