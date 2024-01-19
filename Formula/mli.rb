class Mli < Formula
  desc "Manage macOS Login Items"
  homepage "https://github.com/5ouma/mli"
  version "0.1.0"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/5ouma/mli/releases/download/v0.1.0/mli_Darwin_arm64.tar.gz"
    sha256 "7b515ba0b21661f0639b3805dc829055476b1c6bc0fdcffcd681a3267163d91f"

    def install
      bin.install "mli"
      generate_completions_from_executable("#{bin}/#{name}", "completion")
    end
  end
  if Hardware::CPU.intel?
    url "https://github.com/5ouma/mli/releases/download/v0.1.0/mli_Darwin_x86_64.tar.gz"
    sha256 "b8a2233fe8518ad6929e7c9c62074b09ae691712ffe4cccd8197d0af160f2f85"

    def install
      bin.install "mli"
      generate_completions_from_executable("#{bin}/#{name}", "completion")
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
