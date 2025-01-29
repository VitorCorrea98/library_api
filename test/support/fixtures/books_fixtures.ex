defmodule LibraryApi.BooksFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `LibraryApi.Books` context.
  """

  @doc """
  Generate a book.
  """
  def book_fixture(attrs \\ %{}) do
    {:ok, book} =
      attrs
      |> Enum.into(%{
        author: "some author",
        isbn: "some isbn",
        title: "some title",
        year: 42
      })
      |> LibraryApi.Books.create_book()

    book
  end
end
