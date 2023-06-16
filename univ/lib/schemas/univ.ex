defmodule Univ.Schemas.Univ do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false

  schema "sometable" do
    field :id, :string
    field :nombre, :string
    field :edad, :string
    field :sexo, :string
  end
end
