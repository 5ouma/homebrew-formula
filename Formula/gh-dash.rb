class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "4.16.0"
  license "MIT"
  depends_on "gh"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.15.0/gh-dash_v4.15.0_darwin-amd64"
      sha256 "1728c44cd05879bdbf0fb02243ccc403fc2b4df74121e9ea0015aa56b37c0bf5"
      def install
        bin.install "gh-dash_v#{version}_darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.15.0/gh-dash_v4.15.0_darwin-arm64"
      sha256 "87ba02cafd174592861804ef9cb7f3c5335ad2f178d55e398dfe781f52d7158c"
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
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.15.0/gh-dash_v4.15.0_linux-arm64"
      sha256 "6cde9d6ac1f34eedb691ebca86dd7818152f0a9ce90e9078f6a911e90a6ff240"
      def install
        bin.install "gh-dash_v#{version}_linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
