module NRRC
	module Routes
		module Common
			def list
				get_action(url:"#{@url_base}.json")
			end

			def show id
				get_action(url: "#{url id}.json")
			end

			module Metrics
				def metric_names id
					get_action(url: "#{url id}/metrics.json")
				end

				def metric_data id
					get_action(url: "#{url id}/metrics/data.json")
				end
			end

			module Unsafe
				def update id, data
					put_action({
						payload: data,
						url: "#{url id}.json"
					})
				end

				def delete id
					delete_action(url: "#{url id}.json")
				end
			end

			module New
				def create id, data
					create_action.update({
						payload: data,
						url: "#{url id}.json"
					})
				end
			end
		end
	end
end