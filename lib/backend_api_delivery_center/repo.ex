defmodule BackendApiDeliveryCenter.Repo do
  use Ecto.Repo,
    otp_app: :backend_api_delivery_center,
    adapter: Ecto.Adapters.Postgres
end
