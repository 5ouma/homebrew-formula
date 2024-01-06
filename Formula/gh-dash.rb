class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "3.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v3.12.0/darwin-amd64"
      sha256 "85c56100b733724a7d744222a67d4cffe62a440c0e69dde3ab23c78bc64edec0"
      def install
        bin.install "darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v3.12.0/darwin-arm64"
      sha256 "b06f24632b5ef24e441a3438486e627b586263a0ae62d8eb8ae093a8559aff7c"
      def install
        bin.install "darwin-arm64" => name.to_s
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v3.12.0/linux-amd64"
      sha256 "eb335d9b8e91e5795579a188ea541cc46ef6c6fe4b4633c753603f4f2d660c11"
      def install
        bin.install "linux-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v3.12.0/linux-arm64"
      sha256 "e1e5f32b8f208ead1feb72cca919da89664e1e4472e2406bdf84ea5addda0e51"
      def install
        bin.install "linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
