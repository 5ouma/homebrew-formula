class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "4.16.0"
  license "MIT"
  depends_on "gh"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.16.0/gh-dash_v4.16.0_darwin-amd64"
      sha256 "419b4cdc0d176f81b04ef2b351ac539a289b0e42dfc325d32ff23f9f14cb8013"
      def install
        bin.install "gh-dash_v#{version}_darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.16.0/gh-dash_v4.16.0_darwin-arm64"
      sha256 "5ea74565e168484e573e82aced56893ae7fc1f8cd7feddb5665cf3d5671351c6"
      def install
        bin.install "gh-dash_v#{version}_darwin-arm64" => name.to_s
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.16.0/gh-dash_v4.16.0_linux-amd64"
      sha256 "6cde9d6ac1f34eedb691ebca86dd7818152f0a9ce90e9078f6a911e90a6ff240"
      def install
        bin.install "gh-dash_v#{version}_linux-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.16.0/gh-dash_v4.16.0_linux-arm64"
      sha256 "057675db2c72ffddf371c4ba291861fe006fa20938abf918b17e72e2846c8725"
      def install
        bin.install "gh-dash_v#{version}_linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
