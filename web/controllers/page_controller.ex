defmodule DJFuntime.PageController do
  use DJFuntime.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
