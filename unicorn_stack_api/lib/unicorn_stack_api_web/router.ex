defmodule UnicornStackApiWeb.Router do
  use UnicornStackApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", UnicornStackApiWeb do
    pipe_through :api
  end
end
