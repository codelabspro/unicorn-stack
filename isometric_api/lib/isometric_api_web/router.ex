defmodule IsometricApiWeb.Router do
  use IsometricApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", IsometricApiWeb do
    pipe_through :api
    get "/", DefaultController, :index
  end
end
