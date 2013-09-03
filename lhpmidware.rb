# lhpmidware.rb
module MyMiddleware
  class Interrupt
    def initialize(app)
      @app = app
    end

    def call(env)
      if env['PATH_INFO'] != '/'
        [404, {"Content-Type" => "text/plain"}, ["Not OK!"]]
      else
        @app.call
      end
    end
  end
end