class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "4.8.0"
  license "MIT"
  depends_on "gh"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.8.0/gh-dash_v4.8.0_darwin-amd64"
      sha256 "8d754ea245e11a6dd26ee8b73c9618c11aff9dacf56bdd5b1235e6420d8edd31"
      def install
        bin.install "gh-dash_v#{version}_darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.8.0/gh-dash_v4.8.0_darwin-arm64"
      sha256 "031f88922d7d36030700f2cf9e32e8b79c47974c3ce0972551659e8bdff786cf"
      def install
        bin.install "gh-dash_v#{version}_darwin-arm64" => name.to_s
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.8.0/gh-dash_v4.8.0_linux-amd64"
      sha256 "d110108220e8acf8dba0648f07c58e3b92738c24acf56eee92223da669f201ac"
      def install
        bin.install "gh-dash_v#{version}_linux-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.8.0/gh-dash_v4.8.0_linux-arm64"
      sha256 "cdf65dae9bb2cf5c534707504d40936839a4bf72cd077ab00a6f5dbc6144ed0f"
      def install
        bin.install "gh-dash_v#{version}_linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
