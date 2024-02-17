class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "3.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v3.14.0/darwin-amd64"
      sha256 "7bafc24c408aeb97592ef35ba7d66a012af4ab1a9483ed39abab43bd2a2c22c2"
      def install
        bin.install "darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v3.14.0/darwin-arm64"
      sha256 "7956868d91409129bc8f3e7df846e9db2195f8991ce0f060559c4f9cd805a6ce"
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
      url "https://github.com/dlvhdr/gh-dash/releases/download/v3.14.0/linux-arm64"
      sha256 "6a7b8325ff4b253ad890b4cdd582abe524963c016cbcf6fd4129a36e101a1135"
      def install
        bin.install "linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
