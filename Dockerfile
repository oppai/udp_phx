FROM elixir:1.6.6-alpine

RUN apk --update add git make
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez

ENTRYPOINT ["mix", "phx.server"]
