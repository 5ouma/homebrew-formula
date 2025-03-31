class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "4.14.0"
  license "MIT"
  depends_on "gh"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.14.0/gh-dash_v4.14.0_darwin-amd64"
      sha256 "a58b86d7736897afac2a92c741d68e318a50fc1b2557cf315a266e9d5f3bf39c"
      def install
        bin.install "gh-dash_v#{version}_darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.14.0/gh-dash_v4.14.0_darwin-arm64"
      sha256 "0fb29ee7e1d2484a5bf6bf49c7d8bf8e6f8c9b0ed1eeaf795d85a62b91d7607a"
      def install
        bin.install "gh-dash_v#{version}_darwin-arm64" => name.to_s
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.14.0/gh-dash_v4.14.0_linux-amd64"
      sha256 "66f28648475453adec907bd4a6eda873322ccf7bb1d2904b8c1651550f1f3db8"
      def install
        bin.install "gh-dash_v#{version}_linux-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.14.0/gh-dash_v4.14.0_linux-arm64"
      sha256 "cf17f2375c9f4263073190ddc7fa29e03287a08ed3920541ceea7b429f393744"
      def install
        bin.install "gh-dash_v#{version}_linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
