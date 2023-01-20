class Memo < Formula
  version "0.2.2"
  sha256 "37463e2558cc90dab401f6007f2f2d55394626d63bee370e09c09b53db5fa1b2"

  url "https://gitfront.io/r/Souma/t3rZXcDgwk5A/memo/raw/bin/memo"
  desc "This command tell you some useful commands."
  homepage "https://github.com/5ouma/memo"
  head "https://github.com/5ouma/memo.git"

  def install
    bin.install "memo"
  end
end
