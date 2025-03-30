class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "4.14.0"
  license "MIT"
  depends_on "gh"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.13.0/gh-dash_v4.13.0_darwin-amd64"
      sha256 "97ec0c4571b3eaf0e6710366c0c156bd235f4f12be37d5074dc65b8efea1caf1"
      def install
        bin.install "gh-dash_v#{version}_darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.13.0/gh-dash_v4.13.0_darwin-arm64"
      sha256 "8ed2888a89b1e8430acaeb496dfd146caee407ec278f4ded5263ba2741b0e979"
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
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.13.0/gh-dash_v4.13.0_linux-arm64"
      sha256 "141d605e57b15944e61e448b1622a9982fbbe3fe246c0d3727179621c16b63af"
      def install
        bin.install "gh-dash_v#{version}_linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
