defmodule GymWeb.Admin.HomeController do
  use GymWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
