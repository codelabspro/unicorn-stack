
# Get Started

## Install Elixir as follows

```
brew install elixir

```

## Install Hex package manager as follows

```
mix local.hex

```
### Install Phoenix as follows

```
mix archive.install hex phx_new
```


### Scaffold a new Phoenix project

```
mix phx.new isometric_api --no-install --app isometric_api --database postgres --no-live --no-assets --no-html --no-dashboard --no-mailer --binary-id

==> mix phx.new isometric_api --no-install --app isometric_api --database postgres --no-live --no-assets --no-html --no-dashboard --no-mailer --binary-id
* creating isometric_api/config/config.exs
* creating isometric_api/config/dev.exs
* creating isometric_api/config/prod.exs
* creating isometric_api/config/runtime.exs
* creating isometric_api/config/test.exs
* creating isometric_api/lib/isometric_api/application.ex
* creating isometric_api/lib/isometric_api.ex
* creating isometric_api/lib/isometric_api_web/controllers/error_json.ex
* creating isometric_api/lib/isometric_api_web/endpoint.ex
* creating isometric_api/lib/isometric_api_web/router.ex
* creating isometric_api/lib/isometric_api_web/telemetry.ex
* creating isometric_api/lib/isometric_api_web.ex
* creating isometric_api/mix.exs
* creating isometric_api/README.md
* creating isometric_api/.formatter.exs
* creating isometric_api/.gitignore
* creating isometric_api/test/support/conn_case.ex
* creating isometric_api/test/test_helper.exs
* creating isometric_api/test/isometric_api_web/controllers/error_json_test.exs
* creating isometric_api/lib/isometric_api/repo.ex
* creating isometric_api/priv/repo/migrations/.formatter.exs
* creating isometric_api/priv/repo/seeds.exs
* creating isometric_api/test/support/data_case.ex
* creating isometric_api/lib/isometric_api_web/gettext.ex
* creating isometric_api/priv/gettext/en/LC_MESSAGES/errors.po
* creating isometric_api/priv/gettext/errors.pot
* creating isometric_api/priv/static/robots.txt
* creating isometric_api/priv/static/favicon.ico

We are almost there! The following steps are missing:

    $ cd isometric_api
    $ mix deps.get

Then configure your database in config/dev.exs and run:

    $ mix ecto.create

Start your Phoenix app with:

    $ mix phx.server

You can also run your app inside IEx (Interactive Elixir) as:

    $ iex -S mix phx.server

```