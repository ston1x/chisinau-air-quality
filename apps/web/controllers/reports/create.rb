module Web
  module Controllers
    module Reports
      class Create
        include Web::Action

        def call(params)
          if (Time.now - Report.last.created_at).to_i > 5 # stupid temporary attack resistance
            Report.create(
              stinky: params[:report][:status],
              location: params[:report][:location]
            )
            redirect_to routes.thank_you_path
          else
            redirect_to routes.root_path
          end
        end
      end
    end
  end
end
