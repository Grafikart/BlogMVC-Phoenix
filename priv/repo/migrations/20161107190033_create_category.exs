defmodule Blogmvc.Repo.Migrations.CreateCategory do
  use Ecto.Migration

  def change do
    create table(:categories) do
      add :name, :string
      add :slug, :string
      add :post_count, :integer, default: 0
    end

  end
end
