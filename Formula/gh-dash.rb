class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "4.13.0"
  license "MIT"
  depends_on "gh"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.12.0/gh-dash_v4.12.0_darwin-amd64"
      sha256 "fcf8c0a8f2808484496ebf722b7708bdc6a752e77712bf9cb6bb67a96ee150dd"
      def install
        bin.install "gh-dash_v#{version}_darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.12.0/gh-dash_v4.12.0_darwin-arm64"
      sha256 "bb4739122dc970adb69e9bdb88804ae7c20b248dc24c362f4339e2cd8bf8f439"
      def install
        bin.install "gh-dash_v#{version}_darwin-arm64" => name.to_s
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.13.0/gh-dash_v4.13.0_linux-amd64"
      sha256 "05aa252fccdba45ef8058d9a87c18c9fa9c63b26090eb6dae37535a2eb856172"
      def install
        bin.install "gh-dash_v#{version}_linux-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.12.0/gh-dash_v4.12.0_linux-arm64"
      sha256 "b37f8b0b9d5817f4dc167294c720808f4106e390ffb1595177b86952ba94b3da"
      def install
        bin.install "gh-dash_v#{version}_linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
