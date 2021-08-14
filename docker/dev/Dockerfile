FROM elixir:1.12.2-alpine AS build

# install build dependencies
RUN apk add --update --no-cache build-base npm git curl py-pip inotify-tools

# prepare build dir
WORKDIR /app

# install hex + rebar
RUN mix local.hex --force && \
    mix local.rebar --force

# set build ENV
ENV MIX_ENV=dev

# install mix dependencies
COPY mix.exs mix.lock ./
COPY config config
RUN mix do deps.get, deps.compile

# Install assets
COPY assets assets
RUN cd assets && \
    npm install && \
    node node_modules/webpack/bin/webpack.js --mode development

# compile and build release
COPY lib lib

CMD [ "mix", "phx.server" ]
