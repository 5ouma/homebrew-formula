class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "3.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v3.13.1/darwin-amd64"
      sha256 "abb6d8fcc28f13cdbba4dd0a3ef68b8bc57c4a702b2d393885013a7089094d3a"
      def install
        bin.install "darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v3.13.1/darwin-arm64"
      sha256 "0de4c7590faae9e2970355c279cdfc73cab686eb175e127431f0f3307b896a12"
      def install
        bin.install "darwin-arm64" => name.to_s
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v3.14.0/linux-amd64"
      sha256 "7d057ab21726665b42a359393233796ae65690502be6bd24a1a64120d3d992c9"
      def install
        bin.install "linux-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v3.13.1/linux-arm64"
      sha256 "3f651737c3e85c3983ea30729a245246ada9729fa7aa1820623d184ed2bbd6dc"
      def install
        bin.install "linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
