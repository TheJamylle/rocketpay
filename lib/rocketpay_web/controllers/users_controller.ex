defmodule RocketpayWeb.UsersController do
  use RocketpayWeb, :controller

  alias Rocketpay.User

  def create(conn, params) do
    params
    |> Rocketpay.create_user()
    |> handle_response(conn)
  end

  defp handle_response({:ok, %User{}}, conn) do
    conn
    |> put_status(:created)
    |> render("create.json", user: user)
  end

  # defp handle_response({:error, reason}, conn) do
  #   conn
  #   |> put_status(:error)
  #   |> json(reason)
  # end
end
