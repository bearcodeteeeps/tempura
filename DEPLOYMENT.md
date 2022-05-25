# Deployment

## Render

Tempura is pre-configured to enable easy deployments to [Render](https://render.com/). Render has full support for http/2 and is a cheaper alternative to Heroku. You can see all the major differences [here](https://render.com/render-vs-heroku-comparison).

There's a pre-configured [render blueprint](https://github.com/darokel/tempura/blob/main/render.yaml) which will setup all the required services to run this app. You'll need to sign up for a Render account to deploy the template.

### Set up environment Vars

Before you deploy to Render you'll need to decide how some environment variables are set in the [Render config](https://github.com/darokel/tempura/blob/main/render.yaml). You can configure env vars to have different values per service or configure some services to share from the same group.

First we need to set up a group of env vars which will be shared across the web and worker service including preview apps. Once you've signed up, head over to the Render [env group page](https://dashboard.render.com/new/env-group) and set up a group called `app-settings` with the following env vars:

```
BASIC_AUTH_ENABLED = false # Set to true to enable basic auth
RAILS_MASTER_KEY # Set this to the secret your app users to modify the Rails credentials
RAILS_LOG_TO_STDOUT = true
RAILS_SERVE_STATIC_ASSETS = true
SMTP_ADDRESS # eg smtp.sendgrid.net
SMTP_DOMAIN # yourapp.com
SMTP_PASSWORD # some-password
SMTP_USERNAME # apikey
```

The [render blueprint](https://github.com/darokel/tempura/blob/main/render.yaml) will read from this group and set up the env vars for whichever services requires it. You can change the name of the group from `app-settings` to something else if you want but just make sure to update the blueprint.

The following env vars can be set per service as you may want them to have different values depending on its role (this can be configured in the Render dashboard after the initial setup):

```
# Optional - You may want to serve assets from a different server like cloudfront, set this to the URL of your CDN. Defaults to the url of the Render instance
ASSET_HOST # eg "https://assets.example.com"

# Optional - if you have a custom domain name for your app, set this to the domain name. Defaults to the url of the Render instance
APPLICATION_HOST # eg "https://example.com"

# In production, you may want to configure a different Redis instance for the Rails cache. Defaults to the same Redis instance configured in the template
REDIS_CACHE_URL # eg "redis://redis:6379"
```

### Deploy

Click the "New Blueprint" button and choose this template (assuming you've forked it or setup your own repo based on the tempura template).

Render will start configuring all the services and deploy the app. A new deploy will be created everytime you push to your repo (you can change this to only occur after CI checks for eg on Render).

#### Continous integration and deployment

This template is configured to run CI checks with CircleCI on PRs and merges to the `main` branch.

By default, Render will deploy your app on every merge to the `main` branch. You can disable this in the Render dashboard and programatically call your app's deploy hook from a custom script if you'd like to wait for CI checks on `main`. There is an example of how to do this in the [circleci workflow](https://github.com/darokel/tempura/blob/main/.circleci/config.yml).

#### Security checks

This template is configured to run security checks with [Snyk](https://snyk.io/). When you fork the template, you'll have to add your repo to snyk if you still want the monitoring.

#### Preview Apps

This repo is configured to enable PR previews with Render's [preview environments](https://render.com/docs/preview-environments). PRs will automatically create a high fidelity copy of your entire production environment (including databases).

You can also configure preview environments to have [their own env var values](https://render.com/docs/preview-environments) if you need to.

#### Database Data

To load db data into preview apps, you can customise the [render preview script](https://github.com/darokel/tempura/blob/master/bin/render-preview.sh) which will run any custom initialization for your preview environment after it is created but not on subsequent deploys. This might be useful to load an annonymised copy of your production database for eg. It's configured in the [Render config](https://github.com/darokel/tempura/blob/main/render.yaml#L13).

Alternatively, you can load any initial seed data the app itself may need in the [Render build script](https://github.com/darokel/tempura/blob/master/bin/render-build.sh).
