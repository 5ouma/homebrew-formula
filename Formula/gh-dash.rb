class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "4.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.3.0/gh-dash_v4.3.0_darwin-amd64"
      sha256 "ba5d1da5ef12d424a9d23a4d760cb299acfca420f8ef7236a7f8360192a3fa1f"
      def install
        bin.install "gh-dash_v#{version}_darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.3.0/gh-dash_v4.3.0_darwin-arm64"
      sha256 "3ebff19ea25f5fdf2f1ee880eca3b71f5307416dba72b69052a1a2b2b886e043"
      def install
        bin.install "gh-dash_v#{version}_darwin-arm64" => name.to_s
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.4.0/gh-dash_v4.4.0_linux-amd64"
      sha256 "769abbf762e0c98e584a95d2177190e301640ba83f41b61da3b07a1671e5a5fd"
      def install
        bin.install "gh-dash_v#{version}_linux-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.3.0/gh-dash_v4.3.0_linux-arm64"
      sha256 "14a1a13d5ba04455e3ac553a53db2e2f90538d83059e3e5909f1fa55927d1214"
      def install
        bin.install "gh-dash_v#{version}_linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
