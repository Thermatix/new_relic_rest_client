module NRRC
	module Routes
		class Servers
			extend Helpers
			extend Common
			extend Common::Metrics
			extend Common::Unsafe
			@url_base = "#{Base}/server"
		end
	end
end