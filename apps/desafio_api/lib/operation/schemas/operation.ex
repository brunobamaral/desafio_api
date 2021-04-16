defmodule DesafioApi.Operation.Schemas.Operation do
  @moduledoc """
  Operation entity schema
  """
  use Ecto.Schema
  @primary_key {:operation_id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "operations" do
    field(:operation_name, :string)

    timestamps()
  end
end
