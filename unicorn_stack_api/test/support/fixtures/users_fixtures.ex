defmodule UnicornStackApi.UsersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `UnicornStackApi.Users` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        name: "some name",
        gender: "some gender",
        bio: "some bio"
      })
      |> UnicornStackApi.Users.create_user()

    user
  end
end
