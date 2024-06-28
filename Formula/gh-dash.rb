class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "4.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.2.0/gh-dash_v4.2.0_darwin-amd64"
      sha256 "5a6117034772d187336f625490cfaf08213960db05f8c5c59b56f371c557f905"
      def install
        bin.install "gh-dash_v#{version}_darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.2.0/gh-dash_v4.2.0_darwin-arm64"
      sha256 "81428669729c6f20e1cbf14589404921369da5f6120b32a714e30dad2336bd2f"
      def install
        bin.install "gh-dash_v#{version}_darwin-arm64" => name.to_s
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.3.0/gh-dash_v4.3.0_linux-amd64"
      sha256 "aa8e7858d19abe36d99ef5cd66990169d64355820c50f7328b0f4c23a947e9bf"
      def install
        bin.install "gh-dash_v#{version}_linux-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.2.0/gh-dash_v4.2.0_linux-arm64"
      sha256 "31bbaf40667ee0bf99fc441b05b3e19b8d653535b032b6b2015cc469b9ee91e9"
      def install
        bin.install "gh-dash_v#{version}_linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
