class Ogpk < Formula
  desc "CLI tool to fetch OpenGraph data from a URL"
  homepage "https://github.com/almonk/ogpk"
  version "0.1.3"
  depends_on "timg"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/almonk/ogpk/releases/download/#{version}/ogpk-#{version}-darwin-amd64"
      sha256 "e5006c7fcd6f7337cb5a77ae2ba4fb531728e9fff8f882f36139fbaed92baa63"
      def install
        bin.install "ogpk-#{version}-darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/almonk/ogpk/releases/download/#{version}/ogpk-#{version}-darwin-arm64"
      sha256 "296ec2d80a2de5d711e438827e27d76ec1b5ba31690af39f38668921f9ec1a4e"
      def install
        bin.install "ogpk-#{version}-darwin-arm64" => name.to_s
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/almonk/ogpk/releases/download/#{version}/ogpk-#{version}-linux-amd64"
      sha256 "e821b6ba9c6cd27628caa9a50fa2c48dc81f08f2d3284128b49eaba583c2f2f3"
      def install
        bin.install "ogpk-#{version}-linux-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/almonk/ogpk/releases/download/#{version}/ogpk-#{version}-linux-arm64"
      sha256 "3a203121f68edc135a7bc79756d74c6f3d0438af7c5674b75d873019cf9eadc1"
      def install
        bin.install "ogpk-#{version}-linux-arm64" => name.to_s
      end
    end
  end
end
