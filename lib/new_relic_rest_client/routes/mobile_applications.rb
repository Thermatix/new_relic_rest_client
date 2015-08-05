module NRRC
	module Routes
		class Mobile_applications
			extend Helpers
			extend Common
			extend Common::Metrics
			URL_BASE = "#{Base}/mobile_applications"
		end
	end
end