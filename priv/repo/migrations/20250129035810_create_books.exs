defmodule LibraryApi.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :title, :string, null: false
      add :author, :string, null: false
      add :year, :integer
      add :isbn, :string
    end
    create unique_index(:books, [:isbn])
  end
end
