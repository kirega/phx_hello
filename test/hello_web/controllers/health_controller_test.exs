defmodule HelloWeb.HealthControllerTest do
  use HelloWeb.ConnCase

  test "GET /health", %{conn: conn} do
    conn = get(conn, ~p"/health")

    assert json_response(conn, 200) == %{"status" => "ok"}
  end
end
