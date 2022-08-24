require "rack"
require_relative "app"

use Rack::Runtime
use SimpleMiddleware
run App.new