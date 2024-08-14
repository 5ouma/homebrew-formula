class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "4.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.5.3/gh-dash_v4.5.3_darwin-amd64"
      sha256 "5ca688b6a0beb40d629662791ccaf08b85c86b4bef01a15f9c68fab450294bf6"
      def install
        bin.install "gh-dash_v#{version}_darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.5.3/gh-dash_v4.5.3_darwin-arm64"
      sha256 "30db358bee71c734f3ba151dbdf3bd953765821df4a65aea82cae9003c911191"
      def install
        bin.install "gh-dash_v#{version}_darwin-arm64" => name.to_s
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.5.3/gh-dash_v4.5.3_linux-amd64"
      sha256 "6a2c59b5cf557ef9d6354207ddb91df7c07c43d30009a9a5dbc48dc4950fbf76"
      def install
        bin.install "gh-dash_v#{version}_linux-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.5.3/gh-dash_v4.5.3_linux-arm64"
      sha256 "734bcc1483a51440b0fd1c94018eacaabad9d2597ffc4e9db785a74cf4717c7c"
      def install
        bin.install "gh-dash_v#{version}_linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
