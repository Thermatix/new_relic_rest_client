module NRRC
	module Routes
		module Common
			def list params={}
				get_action({url:"#{@url_base}.json"},params)
			end

			def show id
				get_action(url: "#{url id}.json")
			end

			module Metrics
				def metric_names id, params={}
					get_action({url: "#{url id}/metrics.json"},params)
				end

				def metric_data id, params={}
					get_action({url: "#{url id}/metrics/data.json"},params)
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
		end
	end
end