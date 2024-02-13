class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "3.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v3.13.0/darwin-amd64"
      sha256 "22f9bd379f84f4d73f720349e210f57368eed7ef79296b75993e23ecde773d51"
      def install
        bin.install "darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v3.13.0/darwin-arm64"
      sha256 "7546c68f56844ec820b559f1fbf065035c429d48f843cc9eaf429a268bf80229"
      def install
        bin.install "darwin-arm64" => name.to_s
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v3.13.0/linux-amd64"
      sha256 "cf94a1919811ecdf549442efde365c02ecdf8f395d81d207d377d530d8bd1ade"
      def install
        bin.install "linux-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v3.13.0/linux-arm64"
      sha256 "77ceeaaf8a3c4d73ce33e1cf98f836deda247ec5c2a392ee01f47ca7a0c58437"
      def install
        bin.install "linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
