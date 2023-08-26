defmodule IsometricApiWeb.DefaultController do
  use IsometricApiWeb, :controller

  def index(conn, _params) do
    text conn, "Welcome to Isometric - #{Mix.env}"
  end
end
