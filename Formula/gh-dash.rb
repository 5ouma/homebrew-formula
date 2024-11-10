class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "4.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.7.2/gh-dash_v4.7.2_darwin-amd64"
      sha256 "8fc15231f0ed1400c1867feda4cbf51df4a652130f8a2ae04b82312631a68875"
      def install
        bin.install "gh-dash_v#{version}_darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.7.2/gh-dash_v4.7.2_darwin-arm64"
      sha256 "1f91d7c54c3f831e579148520afc93fb55bb67f24219862f23daa7ff6df970e9"
      def install
        bin.install "gh-dash_v#{version}_darwin-arm64" => name.to_s
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.7.2/gh-dash_v4.7.2_linux-amd64"
      sha256 "4f2158f05af3254605eac4989a20e622961ee6003f324c7f3df7d2bb0b11faf3"
      def install
        bin.install "gh-dash_v#{version}_linux-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.7.2/gh-dash_v4.7.2_linux-arm64"
      sha256 "2144efb30d1bc899ade0ab270b9c3ca89641483752422f281bce26eb73a52c1a"
      def install
        bin.install "gh-dash_v#{version}_linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
