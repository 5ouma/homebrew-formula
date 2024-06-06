class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "4.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.0.0/gh-dash_v4.0.0_darwin-amd64"
      sha256 "773e3c97c007db85d55313d4e534e044f9bfcefbfba4541254a3eb2df6b67596"
      def install
        bin.install "gh-dash_v4.0.0_darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.0.0/gh-dash_v4.0.0_darwin-arm64"
      sha256 "581c9a6fe9fce20e96af033ccb5b9dd975c4ba140ee7d6efebe0819b8d526cdd"
      def install
        bin.install "gh-dash_v4.0.0_darwin-arm64" => name.to_s
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.1.2/gh-dash_v4.1.2_linux-amd64"
      sha256 "bc51b8281b2b50f8c1a37e476499a32c44215092ee7227fa1d00fa90f42bc672"
      def install
        bin.install "gh-dash_v4.0.0_linux-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.0.0/gh-dash_v4.0.0_linux-arm64"
      sha256 "a99ed9bcdf9833ae77d2c942224e50c89ddb934954d29bf1f73caa989eadef5f"
      def install
        bin.install "gh-dash_v4.0.0_linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
