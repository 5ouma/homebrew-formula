class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "4.11.0"
  license "MIT"
  depends_on "gh"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.11.0/gh-dash_v4.11.0_darwin-amd64"
      sha256 "2e16d3cfe666d87f966d4ac7a84ec06e587adb4c0ebf69a483a79fd1ed145f5c"
      def install
        bin.install "gh-dash_v#{version}_darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.11.0/gh-dash_v4.11.0_darwin-arm64"
      sha256 "2841590d17736748c33c1c1810ed43866bbd5883ac366d286127d4ce4a3e4d4a"
      def install
        bin.install "gh-dash_v#{version}_darwin-arm64" => name.to_s
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.11.0/gh-dash_v4.11.0_linux-amd64"
      sha256 "53f6387b5e72bc7fb029585dce35166fe580de107c26046cd038fd71dc86d18a"
      def install
        bin.install "gh-dash_v#{version}_linux-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.11.0/gh-dash_v4.11.0_linux-arm64"
      sha256 "0fed62645571f96a9c738ef0d42d7bf098b6912a12f4d87bfe81633ec798bc8a"
      def install
        bin.install "gh-dash_v#{version}_linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
