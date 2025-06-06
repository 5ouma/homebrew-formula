# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mli < Formula
  desc "Manage macOS Login Items"
  homepage "https://github.com/5ouma/mli"
  version "0.4.2"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/5ouma/mli/releases/download/v0.4.2/mli_Darwin_x86_64.tar.gz"
    sha256 "6f20643b5daf90d791b23e021b3fc41035920a2839bf37b1bf0e6f4dae383f63"

    def install
      bin.install "mli"
      generate_completions_from_executable("#{bin}/#{name}", "completion")
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/5ouma/mli/releases/download/v0.4.2/mli_Darwin_arm64.tar.gz"
    sha256 "b10089aa86a9e9e0c136f1c092f41cda6c10c03e4c0a8133268579055dfa09b7"

    def install
      bin.install "mli"
      generate_completions_from_executable("#{bin}/#{name}", "completion")
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
