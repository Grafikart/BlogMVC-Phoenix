defmodule Blogmvc.Category do
  use Blogmvc.Web, :model

  schema "categories" do
    field :name, :string
    field :slug, :string
    field :post_count, :integer
  end

  def sidebar do
    Blogmvc.Category
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :slug, :post_count])
    |> validate_required([:name, :slug, :post_count])
  end

  def list do
    from(c in Blogmvc.Category, select: {c.name, c.id})
  end
end
