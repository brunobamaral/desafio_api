defmodule DesafioApi.Bank.Schemas.Bank do
  @moduledoc """
    Bank Entity Scheme
  """
  use Ecto.Schema

  @primary_key {:bank_id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "bank" do
    field(:bank_name, :string)

    timestamps()
  end
end
