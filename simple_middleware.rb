class SimpleMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env) # Appクラスのオブジェクトをとる
    return [status, headers, body]
  end
end