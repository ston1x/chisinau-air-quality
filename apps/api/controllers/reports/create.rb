module Api
  module Controllers
    module Reports
      class Create
        include Api::Action

        accept :json
        before :authorize
        expose :report

        def call(params)
          @report = Report.create(
            stinky: params[:report][:status],
            location: params[:report][:location]
          )
        end

        private

        def authorize
          return unless Token.find_by(key: params[:token])&.active
        end
      end
    end
  end
end
