defmodule UdpPhxWeb.Router do
  use UdpPhxWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", UdpPhxWeb do
    pipe_through(:api)

    get("/hello", Controllers.HelloController, :hello)
  end
end
