module NRRC
	module Routes
		class Server
			extend Helpers
			extend Common
			extend Common::Metrics
			extend Common::Unsafe
			extend Common::New
			@url_base = "#{Base}/server"
		end
	end
end