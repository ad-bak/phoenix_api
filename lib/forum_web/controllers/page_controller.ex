defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end

  def users(conn, _params) do
    IO.puts("User here")

    users = [
      %{id: 1, name: "Alice", email: "someone@gmail.com"},
      %{id: 2, name: "John", email: "anyone@gmail.com"},
      %{id: 3, name: "Bob", email: "bebe@gmail.com"},
      %{id: 4, name: "Eve", email: "who@gmail.com"}
    ]

    json(conn, %{users: users})
  end
end
