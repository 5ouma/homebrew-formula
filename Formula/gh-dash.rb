class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "3.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v3.11.0/darwin-amd64"
      sha256 "0e64c760cbada7320a6181d9946b398310c8d638d1be790210dd1cf2480ccb88"
      def install
        bin.install "darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v3.11.0/darwin-arm64"
      sha256 "e8a25710238f9720dcc0092da3f2ad444b1cc98f3a4027afd5a1f73538353e4e"
      def install
        bin.install "darwin-arm64" => name.to_s
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v3.11.0/linux-amd64"
      sha256 "6d07e381afcf04b0baecd47d39da0b8a073f78f476ebdadc47e5d0e3eb2965ae"
      def install
        bin.install "linux-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v3.11.0/linux-arm64"
      sha256 "ba6195aa2957b34f2b9e19ca7f27f6199545fff10f073874c6f2b8c40f25cf16"
      def install
        bin.install "linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
