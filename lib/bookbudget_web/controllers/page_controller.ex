defmodule BookbudgetWeb.PageController do
  use BookbudgetWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
