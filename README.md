# learning-elixir
Learning Elixir/Erlang --this repository is only for practices--


# Usar Ecto con una base de datos previamente creada.

## Creación de proyecto "users"

```bash
mix phx.new users
```

## Configuración a base de datos

users/config/dev.exs
```elixir
config :users, Users.Repo,
  username: "youruser",
  password: "somepassword",
  database: "mydatabase",
  hostname: "localhost",
  port: "8859",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10
```

## Configuración de acceso a las tablas

```bash
cd users/lib/users
mkdir schemas
emacs -nw users.ex
```

```elixir
defmodule Users.Schemas.User do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  
  schema "some_users" do
    field :id, :string
    field :nombre, :string
    field :edad, :string
    field :sexo, :string
  end
end
```

Puedes negar la llave primaria usando:

```elixir
@primary_key false
```

o puedes activarla usando:

```elixir
primary_key {:id, :id, autogenerate: true}
```

Hasta este punto ya tienes acceso a la tabla, ahora a realizar un query.

## Realizando query

```elixir
iex -S mix
query = from x in "some_users", where: x.sexo == "F", select: x.nombre
Users.Repo.all(query)
```
# Proyecto básico "univ"

* Este proyecto conecta Ecto con una base de datos previa y no implementa Phoenix.
* Cuando agregas el modelo en lib/schemas/univ.ex no importa cuantas columnas tenga la base de datos,
  en el archivo de configuración sólo llamas las columnas que necesitas para Ecto.
* El esquema debe tener básicamente Ecto.Repo, Application, Config y Ecto.Schema
