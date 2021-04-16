defmodule DesafioApi.User.Schemas.User do
  @moduledoc """
    User entity scheme
  """
  use Ecto.Schema
  @primary_key {:user_id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "user" do
    field(:user_name, :string)
    field(:user_email, :string)
    field(:user_password, :string)

    timestamps()
  end
end
