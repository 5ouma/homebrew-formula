class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "4.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.4.0/gh-dash_v4.4.0_darwin-amd64"
      sha256 "e16f6a3c5243841cca5d2f3bd89e7fc078925b06252901829f9610993f410190"
      def install
        bin.install "gh-dash_v#{version}_darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.4.0/gh-dash_v4.4.0_darwin-arm64"
      sha256 "9c367c9c2a4932957affd0dc2d892fbc7ab9eaa7cd5c2872d053c301855f7780"
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
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.4.0/gh-dash_v4.4.0_linux-arm64"
      sha256 "fd1cdf80a435dcc9cd14f8dbaac29258fe24fb5f2d8df52305c3addaece9a8b8"
      def install
        bin.install "gh-dash_v#{version}_linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
