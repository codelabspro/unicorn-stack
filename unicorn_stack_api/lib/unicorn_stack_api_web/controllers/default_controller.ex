defmodule UnicornStackApiWeb.DefaultController do
  use UnicornStackApiWeb, :controller
  def index(conn, _params) do
    text conn, "Welcome to UnicornStackApi! - #{Mix.env()}"
  end
end
