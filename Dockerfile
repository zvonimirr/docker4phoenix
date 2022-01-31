# Set Elixir version
ARG ELIXIR_TAG=1.13.1
FROM elixir:$ELIXIR_TAG
WORKDIR /app
# Expose the port(s)
EXPOSE 80
EXPOSE 443
EXPOSE 4000
# Copy the source code
COPY . /app
# Install Mix & rebar3
RUN mix local.hex --force
RUN mix local.rebar --force
# Generate the digest
RUN mix phx.digest