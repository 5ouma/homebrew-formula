class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "4.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.7.0/gh-dash_v4.7.0_darwin-amd64"
      sha256 "6bcbff6f2726419e1e69061fea7f68c7896f76e9bf4262dfdb67063725f96ec7"
      def install
        bin.install "gh-dash_v#{version}_darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.7.0/gh-dash_v4.7.0_darwin-arm64"
      sha256 "fb769cc2883ed3f88940bc1e1d01e8428436d522cb9b044359aa6c7161fbe31b"
      def install
        bin.install "gh-dash_v#{version}_darwin-arm64" => name.to_s
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.7.0/gh-dash_v4.7.0_linux-amd64"
      sha256 "8f93e9612bf180c9e64a0e15a178ccb7cd2b5443af4bb4fa1ca28bf71b6e5c71"
      def install
        bin.install "gh-dash_v#{version}_linux-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.7.0/gh-dash_v4.7.0_linux-arm64"
      sha256 "ae0c9a0724f140a83fd2c898fda5ea88be2d76320c5d9d40341691ffa15df59b"
      def install
        bin.install "gh-dash_v#{version}_linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
