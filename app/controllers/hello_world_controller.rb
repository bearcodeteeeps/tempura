# frozen_string_literal: true

# The HelloWorld controller. Use it for your own purpose.
class HelloWorldController < ApplicationController
  def index
    Redis.current.incr('page hits')
    @page_hits = Redis.current.get('page hits')
  end
end
