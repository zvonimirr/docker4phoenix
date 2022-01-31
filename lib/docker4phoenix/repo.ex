defmodule Docker4phoenix.Repo do
  use Ecto.Repo,
    otp_app: :docker4phoenix,
    adapter: Ecto.Adapters.Postgres
end
