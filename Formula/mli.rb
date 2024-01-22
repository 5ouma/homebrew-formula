class Mli < Formula
  desc "Manage macOS Login Items"
  homepage "https://github.com/5ouma/mli"
  version "0.2.0"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/5ouma/mli/releases/download/v0.2.0/mli_Darwin_arm64.tar.gz"
    sha256 "2d50d96483c979abcc84c5213d67c94440649ff86ec6a0cfd4db462ed1bd83d3"

    def install
      bin.install "mli"
      generate_completions_from_executable("#{bin}/#{name}", "completion")
    end
  end
  if Hardware::CPU.intel?
    url "https://github.com/5ouma/mli/releases/download/v0.2.0/mli_Darwin_x86_64.tar.gz"
    sha256 "6cdeb7c74c9aeb939dd409192c701c522afd27fcfe1a3d59f9ef375201488f58"

    def install
      bin.install "mli"
      generate_completions_from_executable("#{bin}/#{name}", "completion")
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
