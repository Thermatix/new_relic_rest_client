module NRRC
	module Routes
		class Mobile_applications
			extend Helpers
			extend Common
			extend Common::Metrics
			@url_base = "#{Base}/mobile_applications"
		end
	end
end