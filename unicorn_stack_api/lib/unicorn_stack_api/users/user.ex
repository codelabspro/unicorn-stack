defmodule UnicornStackApi.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "users" do
    field :name, :string
    field :gender, :string
    field :bio, :string
    belongs_to :account, UnicornStackApi.Accounts.Account

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:account_id, :name, :gender, :bio])
    |> validate_required([:account_id])
  end
end
