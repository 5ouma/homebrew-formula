class GhDash < Formula
  desc "Beautiful CLI dashboard for GitHub"
  homepage "https://dlvhdr.github.io/gh-dash"
  version "4.9.0"
  license "MIT"
  depends_on "gh"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.8.1/gh-dash_v4.8.1_darwin-amd64"
      sha256 "48a38459cb1e86f6d1860e3a695e464dbef3d1c93025e4b64f466445da67c1fd"
      def install
        bin.install "gh-dash_v#{version}_darwin-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.8.1/gh-dash_v4.8.1_darwin-arm64"
      sha256 "1abcad05f8f2cd1dc39a2f608d3130165abaac81b2d4c76c60300d6235423226"
      def install
        bin.install "gh-dash_v#{version}_darwin-arm64" => name.to_s
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.9.0/gh-dash_v4.9.0_linux-amd64"
      sha256 "86bd440e9348afde891030e87de470425c2f1dc9e846e64a007265bbe3bb340c"
      def install
        bin.install "gh-dash_v#{version}_linux-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dlvhdr/gh-dash/releases/download/v4.8.1/gh-dash_v4.8.1_linux-arm64"
      sha256 "feb027bc54a8843a0b583708d591ba46148b45076d79bdc43336844f0412b1fe"
      def install
        bin.install "gh-dash_v#{version}_linux-arm64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end
