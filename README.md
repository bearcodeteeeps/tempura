<div align="center">
  <br>
  <h1>Tempura 🍤</h1>
  <strong>A delightfully light and modern vanilla Rails stack for your next big idea.</strong>
</div>

<p align="center">
  <a href="https://www.ruby-lang.org/en/">
    <img src="https://img.shields.io/badge/Ruby-v3.0.2-green.svg" alt="ruby version">
  </a>
  <a href="http://rubyonrails.org/">
    <img src="https://img.shields.io/badge/Rails-v7.0.0-brightgreen.svg" alt="rails version">
  </a>
  <a href="https://circleci.com/gh/darokel/tempura">
    <img src="https://circleci.com/gh/darokel/tempura.svg?style=svg" alt="circle ci badge">
  </a>
  <img src="https://img.shields.io/github/languages/code-size/darokel/tempura" alt="GitHub code size in bytes">
</p>

## What is Tempura?

Tempura is a modern and light vanilla Rails 7 stack which adheres to the [Rails doctrine](https://rubyonrails.org/doctrine/). It's a starter template for building wonderful software products with Rails.

Unlike my other template [Bento](https://github.com/darokel/bento), Tempura uses the new Rails 7 [import maps](https://world.hey.com/dhh/modern-web-apps-without-javascript-bundling-or-transpiling-a20f2755) and does not require any Node tooling. It's the default experience that's shipped with Rails 7 for writing frontend assets. That means you can write modern JavaScript without all the bundling and transpiling.

This template additionally takes advantage of Tailwind CSS to allow you to easily style your application with a utility based approach. It uses the [tailwindcss-rails gem](https://github.com/rails/tailwindcss-rails) which wraps Tailwind's new standalone CLI utility.

### What's in the box?

Tempura is light but powerful.

It provides a few staples:

- All the major [Rails](https://rubyonrails.org/) 7 defaults (except for Test Unit in favour of Rspec)
- Modern JavaScript using [import maps](https://github.com/rails/importmap-rails)
- Modern CSS powered by [Tailwind](https://tailwindcss.com/)
- [Hotwire](https://hotwire.dev/) Stack ([Turbo](https://turbo.hotwire.dev/) & [Stimulus](https://stimulus.hotwire.dev/)) for SPA-like JavaScript sprinkles without the SPA complexity.
- [Sidekiq](https://sidekiq.org/) for background jobs
- [Rspec](https://rspec.info/) for unit and system tests along with [simplecov](https://github.com/simplecov-ruby/simplecov) for coverage support
- [Capybara](https://github.com/teamcapybara/capybara) with headless [Selenium](https://www.selenium.dev/documentation/en/) integration tests and a pre-configured [Github Actions](https://github.com/features/actions) config ready to go. See `spec/system` for an example.

## Getting Started

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/)
- [PostgreSQL](https://www.postgresql.org/)
- [Redis](https://redis.io/)
- [ChromeDriver](https://chromedriver.chromium.org/)

### Installation

Make sure you've installed the dependencies above then:

Fork the repo:

    git clone git@github.com:darokel/tempura.git

Set up your machine:

    ./bin/setup

Make sure the tests pass:

    ./bin/rake

Start the server:

    ./bin/dev

Go and build!

## Deploying

This repo comes with a 1-click deployment option to Render:

<a href="https://render.com/deploy?repo=https://github.com/darokel/tempura">
  <img src="https://render.com/images/deploy-to-render-button.svg" alt="Deploy to Render">
</a>

There are also some scripts available to help with deploying to Render and setting up preview apps (Render's answer to Heroku review apps).

See [DEPLOYMENT.md](DEPLOYMENT.md) for more info on using the template with Render.

## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- ACKNOWLEDGEMENTS -->

## Acknowledgements

- [Suspenders](https://github.com/thoughtbot/suspenders)
