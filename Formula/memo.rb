class Memo < Formula
  version "0.1.0"
  sha256 "eaa5463f92876f63987543111a53b64d7556c1c7b0f223f57df50df33a47cb87"

  url "https://gitfront.io/r/Souma/t3rZXcDgwk5A/memo/raw/bin/memo"
  desc "This command tell you some useful commands."
  homepage "https://github.com/5ouma/memo"
  head "https://github.com/5ouma/memo.git"

  def install
    bin.install "memo"
  end
end
