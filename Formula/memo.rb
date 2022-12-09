class Memo < Formula
  version "0.2.0"
  sha256 "9130743e4b4e142161229a77ad14134e9d08dc68b4e9fab968babeb057473271"

  url "https://gitfront.io/r/Souma/t3rZXcDgwk5A/memo/raw/bin/memo"
  desc "This command tell you some useful commands."
  homepage "https://github.com/5ouma/memo"
  head "https://github.com/5ouma/memo.git"

  def install
    bin.install "memo"
  end
end
