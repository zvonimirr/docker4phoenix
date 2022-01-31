defmodule Docker4phoenixWeb.PageController do
  use Docker4phoenixWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
