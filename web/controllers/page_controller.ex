defmodule PurplePerformance.PageController do
  use PurplePerformance.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def xxx(conn, params) do
    render conn, "xxx.html"
  end
end
