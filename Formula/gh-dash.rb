class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "4.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.5.2/gh-dash_v4.5.2_darwin-amd64"
      sha256 "5e60e33f214983a7db2d881876a5220c9fc3865bea1494b23732031657814f18"
      def install
        bin.install "gh-dash_v#{version}_darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.5.2/gh-dash_v4.5.2_darwin-arm64"
      sha256 "6fc242191b3cc5645fda8ba7811304758cb66fd98e63568f8385be2181293ab0"
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
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.5.2/gh-dash_v4.5.2_linux-arm64"
      sha256 "127d720ae6f589615e1f751a680c318345810a9ba5293f347d1cbd5d9f8be78c"
      def install
        bin.install "gh-dash_v#{version}_linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
