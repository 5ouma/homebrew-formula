class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "4.8.0"
  license "MIT"
  depends_on "gh"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.7.3/gh-dash_v4.7.3_darwin-amd64"
      sha256 "8e861f2443451b4795f8ef53b1dafc363f4faa3cfba87e7be4851047fecf5572"
      def install
        bin.install "gh-dash_v#{version}_darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.7.3/gh-dash_v4.7.3_darwin-arm64"
      sha256 "49b49f12addeceaba76cd18c91a402e79a6dc60949c12082ab1cf87e5ae94c31"
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
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.7.3/gh-dash_v4.7.3_linux-arm64"
      sha256 "ca7ece358f6ebf4cc1b3de2accf98a2e5a14d5edef58e549e5f26b45fba8aeca"
      def install
        bin.install "gh-dash_v#{version}_linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
