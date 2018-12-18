defmodule UdpPhxWeb.Controllers.HelloController do
  use UdpPhxWeb, :controller

  def hello(conn, _) do
    send_resp(conn, 200, "World")
  end
end
