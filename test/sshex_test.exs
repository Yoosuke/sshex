defmodule SshexTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest Sshex

  test "create function outputs 'Hello World'" do
    assert capture_io(fn -> Sshex.create() end) == "Hello World\n"
  end

  test "print_ssh_keygen_help function outputs ssh-keygen help" do
    actual_output = capture_io(fn -> Sshex.print_ssh_keygen_help() end)
    assert String.contains?(actual_output, "ssh-keygen [オプション] [出力ファイル名]")
    assert String.contains?(actual_output, "b <bit数>: 鍵のビット数を指定します。一般的な値は「1024」や「2048」や「4096」です。")
    assert String.contains?(actual_output, "t <タイプ>: 鍵のタイプを指定します。一般的な値は「rsa」や「dsa」などです。")
    assert String.contains?(actual_output, "c <コメント>: 鍵に付けるコメントを指定します。任意の文字列を使用できます。")
    assert String.contains?(actual_output, "f <ファイル名>: 鍵の生成や変換時に使用するファイル名を指定します。")
    assert String.contains?(actual_output, "ssh-keygen -b 4096 -t dsa -c 'My SSH key' -f sshkey_filename")
  end


end
