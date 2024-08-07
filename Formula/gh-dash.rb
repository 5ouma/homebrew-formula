class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "4.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.5.1/gh-dash_v4.5.1_darwin-amd64"
      sha256 "cd89f45b097873d24f279f15384abd1ee5f314752c1147f6396415d3f11a24e8"
      def install
        bin.install "gh-dash_v#{version}_darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.5.1/gh-dash_v4.5.1_darwin-arm64"
      sha256 "57d27611e715dea3546afed91a894aa1bbd1b65575d077563031f65bae8a5f12"
      def install
        bin.install "gh-dash_v#{version}_darwin-arm64" => name.to_s
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.5.2/gh-dash_v4.5.2_linux-amd64"
      sha256 "ae1b81c45bdf8f56946321156150ec3cd36c9e3790a68d2e8867423a94e83c71"
      def install
        bin.install "gh-dash_v#{version}_linux-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.5.1/gh-dash_v4.5.1_linux-arm64"
      sha256 "f7c31e5bc0eac77f445dda624733461c4295336ab0aa00755903acf02e6c7aeb"
      def install
        bin.install "gh-dash_v#{version}_linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
