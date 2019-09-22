module Web
  module Controllers
    module Reports
      class Index
        include Web::Action

        expose :reports, :neighbourhoods

        def call(params)
          @reports = Report.all

          @neighbourhoods = {
            'Centru' => 'centru',
            'Botanica' => 'botanica',
            'Râșcani' => 'rascani',
            'Buiucani' => 'buiucani',
            'Ciocana' => 'ciocana'
          }
        end
      end
    end
  end
end
