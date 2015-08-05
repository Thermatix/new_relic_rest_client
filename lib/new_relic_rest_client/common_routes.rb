module NRRC
	module Routes
		module Common
			def list
				make_request(get_action[:url] = "#{URL_BASE}.json",)
			end

			def show id
				make_request(get_action[:url] = "#{url id}.json")
			end

			module Metrics
				def metric_names id
					make_request(get_action[:url] = "#{url id}/metrics.json")
				end

				def metric_data id
					make_request(get_action[:url] = "#{url id}/metrics/data.json")
				end
			end

			module Unsafe
				def update id, data
					make_request(
						put_action.update({
							payload: data,
							url: "#{url id}.json"
						})
					)
				end

				def delete id
					make_request(delete_action[:url] = "#{url id}.json")
				end
			end

			module New
				def create id, data
					make_request(
						create_action.update({
							payload: data,
							url: "#{url id}.json"
						})
					)
				end
			end
		end
	end
end