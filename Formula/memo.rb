class Memo < Formula
  version "0.2.1"
  sha256 "338602486e399b9ddfc03233a28a302c04d9a9839081ac095ec9a29460113042"

  url "https://gitfront.io/r/Souma/t3rZXcDgwk5A/memo/raw/bin/memo"
  desc "This command tell you some useful commands."
  homepage "https://github.com/5ouma/memo"
  head "https://github.com/5ouma/memo.git"

  def install
    bin.install "memo"
  end
end
