# frozen_string_literal: true

# https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server

# The environment variable WEB_CONCURRENCY may be set to a default value based
# on dyno size. To manually configure this value use heroku config:set
# WEB_CONCURRENCY.
#
# Increasing the number of workers will increase the amount of resting memory
# your dynos use. Increasing the number of threads will increase the amount of
# potential bloat added to your dynos when they are responding to heavy
# requests.
#
# Starting with a low number of workers and threads provides adequate
# performance for most applications, even under load, while maintaining a low
# risk of overusing memory.
workers Integer(ENV.fetch('WEB_CONCURRENCY', 2))
threads_count = Integer(ENV.fetch('MAX_THREADS', 2))
threads(threads_count, threads_count)
preload_app!
worker_timeout 3600 if ENV.fetch('RAILS_ENV', 'development') == 'development'
port ENV.fetch('PORT', 3000)
environment ENV.fetch('RAILS_ENV', 'development')
pidfile ENV.fetch('PIDFILE', 'tmp/pids/server.pid')
plugin :tmp_restart
