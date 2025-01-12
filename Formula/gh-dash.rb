class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "4.9.1"
  license "MIT"
  depends_on "gh"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.9.0/gh-dash_v4.9.0_darwin-amd64"
      sha256 "e5f3c0e1fbc3e802b5fa9bf8a450de32c88c4b8480645b0faad683a9c6de93b5"
      def install
        bin.install "gh-dash_v#{version}_darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.9.0/gh-dash_v4.9.0_darwin-arm64"
      sha256 "e7bdf1f60f2fdada780e8fd763e01b4739200f8230ec2a66c8c1976104948662"
      def install
        bin.install "gh-dash_v#{version}_darwin-arm64" => name.to_s
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.9.1/gh-dash_v4.9.1_linux-amd64"
      sha256 "8acb639dc0bbde128388fa8219066eadb083ff68c234cd61aa5e7e82d8bd0514"
      def install
        bin.install "gh-dash_v#{version}_linux-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.9.0/gh-dash_v4.9.0_linux-arm64"
      sha256 "d2e083462c7af4e772ce46b1181d63e323b72df33844d60f910bc4b32f1939c2"
      def install
        bin.install "gh-dash_v#{version}_linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
