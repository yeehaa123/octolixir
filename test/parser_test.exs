Code.require_file "test_helper.exs", __DIR__

defmodule ParserTest do
  use ExUnit.Case

  import Octolixir.Parser

  test "parse_gist should return an error with an invalid id" do
    response = parse_gist("1r3r5")
    assert response == { :error, "invalid gist id" } 
  end

  test "parse_gist should return succesfully with a valid id" do
    response = parse_gist(6179162)
    assert response == { :ok, "some data" } 
  end
end
