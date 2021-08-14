defmodule GymWeb.Admin.UserController do
  use GymWeb, :controller

  plug :put_layout, "admin.html"

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
