class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "3.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v3.11.1/darwin-amd64"
      sha256 "e2cf65893340b2b3e4d93bfc7da6a133f239a1cc37146a461e112facacc5035a"
      def install
        bin.install "darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v3.11.1/darwin-arm64"
      sha256 "8557987275a5fd9a491f1126efc0cf123328b0e43b83b4d3dfb1298538daa265"
      def install
        bin.install "darwin-arm64" => name.to_s
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v3.11.1/linux-amd64"
      sha256 "2ca205681c12e5263b843732671e50ae506fd5dd9bad8b0725314c975a4ddd35"
      def install
        bin.install "linux-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v3.11.1/linux-arm64"
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
