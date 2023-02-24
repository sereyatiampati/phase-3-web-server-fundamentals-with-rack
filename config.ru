require 'rack'

class App
    def call(env)
      path = env["PATH_INFO"]
  
      if path == "/"
        [200, { "Content-Type" => "text/html" }, ["<h2>&#129416</h2>"]]
      elsif path == "/potato"
        [200, { "Content-Type" => "text/html" }, ["<h1>Boil 'em, mash 'em, stick 'em in a stew</h1>"]]
      else
        [404, { "Content-Type" => "text/html" }, ["Page not found"]]
      end
    end
  end
  
  run App.new