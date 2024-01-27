defmodule Sshex do
  @moduledoc """
  Documentation for `Sshex`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Sshex.create()
      :ok

  """
  def create() do
    IO.puts("Hello World")
  end

  @doc """
  print ssh keygen help.

  ## Examples

      iex> Sshex.print_ssh_keygen_help()
      :ok

  """

  def print_ssh_keygen_help() do
    output = """
    ssh-keygen [オプション] [出力ファイル名]\n
    \n
    ---\n
    b <bit数>: 鍵のビット数を指定します。一般的な値は「1024」や「2048」や「4096」です。\n
    t <タイプ>: 鍵のタイプを指定します。一般的な値は「rsa」や「dsa」などです。\n
    c <コメント>: 鍵に付けるコメントを指定します。任意の文字列を使用できます。\n
    f <ファイル名>: 鍵の生成や変換時に使用するファイル名を指定します。\n
    \n
    ---\n
    使用例:\n
    ssh-keygen -b 4096 -t dsa -c 'My SSH key' -f sshkey_filename\n
    """
    IO.puts(output)
  end

end
