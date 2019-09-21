module Web
  module Controllers
    module Reports
      class Index
        include Web::Action

        expose :reports

        def call(params)
          @reports = Report.all
        end
      end
    end
  end
end
