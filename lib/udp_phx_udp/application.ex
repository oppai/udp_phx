defmodule UdpPhxUdp.Application do
  @moduledoc """
    深く考えず作ったためにudpという文言が2つもついてしまった気持ち悪いアプリケーション
  """
  use GenServer
  require Logger

  def start_link(port \\ 12345) do
    Logger.info("UDP server binding #{port}")
    GenServer.start_link(__MODULE__, port)
  end

  def init(port) do
    :gen_udp.open(port, [:binary])
  end

  def handle_info({:udp, socket, host, port, _} = data, server_socket) do
    :gen_udp.send(socket, host, port, "#{inspect(data)}>\n")
    {:noreply, server_socket}
  end
end
