module NRRC
	module Routes
		class Browser_Applications
			extend Helpers
			extend Common
			@url_base = "#{Base}/browser_applications"

			class << self
				def create data
					create_action.update({
						payload: data,
						url: "#{@url_base}.json"
					})
				end
			end
		end
	end
end

