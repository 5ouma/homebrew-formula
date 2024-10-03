class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "4.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.5.4/gh-dash_v4.5.4_darwin-amd64"
      sha256 "4034e783e27e6c3a78afb7d86f337ecab36f6421d651ec2432ed7e099039d494"
      def install
        bin.install "gh-dash_v#{version}_darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.5.4/gh-dash_v4.5.4_darwin-arm64"
      sha256 "d219d2562f4af7df895302a18f31ceecfc6f23d8c798fc36812f46a9482fd0ec"
      def install
        bin.install "gh-dash_v#{version}_darwin-arm64" => name.to_s
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.7.0/gh-dash_v4.7.0_linux-amd64"
      sha256 "8f93e9612bf180c9e64a0e15a178ccb7cd2b5443af4bb4fa1ca28bf71b6e5c71"
      def install
        bin.install "gh-dash_v#{version}_linux-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.5.4/gh-dash_v4.5.4_linux-arm64"
      sha256 "d9941bc3389df2e70d523f9783af0f8fa49a1ead5caed8ce9aa20c0306ba6eef"
      def install
        bin.install "gh-dash_v#{version}_linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
