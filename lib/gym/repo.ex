defmodule Gym.Repo do
  use Ecto.Repo,
    otp_app: :gym,
    adapter: Ecto.Adapters.Postgres
end
