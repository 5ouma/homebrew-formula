class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "4.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.1.2/gh-dash_v4.1.2_darwin-amd64"
      sha256 "7f1dbb0a2a33497edecc26867ddbcbb0e07039089d06b38705d78c67da1345fd"
      def install
        bin.install "gh-dash_v#{version}_darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.1.2/gh-dash_v4.1.2_darwin-arm64"
      sha256 "002e36a768f802b2821156f4a8c0009899d855cc22b24eec05047bbc30f23dcf"
      def install
        bin.install "gh-dash_v#{version}_darwin-arm64" => name.to_s
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.1.2/gh-dash_v4.1.2_linux-amd64"
      sha256 "bc51b8281b2b50f8c1a37e476499a32c44215092ee7227fa1d00fa90f42bc672"
      def install
        bin.install "gh-dash_v#{version}_linux-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.1.2/gh-dash_v4.1.2_linux-arm64"
      sha256 "7cee0e611eb575dbfcfef6c5b539dd1a6a6fa834dd966e8b32fe89843b017242"
      def install
        bin.install "gh-dash_v#{version}_linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
