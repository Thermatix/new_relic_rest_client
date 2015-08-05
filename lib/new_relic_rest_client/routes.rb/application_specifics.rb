module NRRC
	module Routes
		class Application_Specific_Extras
			extend Helpers
			class << self

				URL_BASE = "#{Base}/applications"


				def url id
					"#{URL_BASE}/%s/#{@specific}" % [id]
				end

				def list id
					make_request(get_action[:url] = "#{url id}.json",)
				end

				def show id, specific_id
					make_request(get_action[:url] = "#{url id}/#{specific_id}.json",)
				end

				def metric_names id, specific_id
					make_request(get_action[:url] = "#{url id}/#{specific_id}/metrics.json")
				end

				def metric_data id, specific_id
					make_request(get_action[:url] = "#{url id}/#{specific_id}/metrics/data.json")
				end
			end
		end

		class Application_Hosts < Application_Specific_Extras
			@specific = 'hosts'
		end

		class Application_Instances < Application_Specific_Extras
			@specific = 'instances'
		end
	end
end