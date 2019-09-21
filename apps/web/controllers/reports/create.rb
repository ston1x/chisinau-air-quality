module Web
  module Controllers
    module Reports
      class Create
        include Web::Action

        def call(params)
          if (Time.now - Report.last.created_at).to_i > 5 # stupid temporary attack resistance
            # stinky = params[:report][:status] == 'true' ? true : false
            Report.create(
              stinky: params[:report][:status],
              location: params[:report][:location]
            )
          end
        end
      end
    end
  end
end
