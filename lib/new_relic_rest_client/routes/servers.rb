module NRRC
	module Routes
		class Server
			extend Helpers
			extend Common
			extend Common::Metrics
			extend Common::Unsafe
			extend Common::New
			URL_BASE = "#{Base}/server"
		end
	end
end