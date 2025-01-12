class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "4.9.1"
  license "MIT"
  depends_on "gh"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.9.1/gh-dash_v4.9.1_darwin-amd64"
      sha256 "838378129a9f47758401a3a3fde2d5bba4a074e0e02f1d8b18e3becb367dbab1"
      def install
        bin.install "gh-dash_v#{version}_darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.9.1/gh-dash_v4.9.1_darwin-arm64"
      sha256 "3a3334efff088a02741feffd7a9bbe68b73d510118a1c1b557fbd809cd7009f9"
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
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.9.1/gh-dash_v4.9.1_linux-arm64"
      sha256 "8b16eabb8209d005ce7fee7d6316b975aad6f34941463cd6c0b20346d90fcee2"
      def install
        bin.install "gh-dash_v#{version}_linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
