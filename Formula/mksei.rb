class Mksei < Formula
  desc "Small tool to automatically export and import custom macOS keyboard shortcuts"
  homepage "https://gist.github.com/5ouma/0a5717868f21a29ab96c914ddd55a409"
  url "https://gist.githubusercontent.com/5ouma/0a5717868f21a29ab96c914ddd55a409/raw/aa46f5ac940e522a3a4b7665d30b7598eaf89750/macos_keyboard_shortcuts_exporter_importer.php"
  version "1.2.0"
  sha256 "73de5daccaebb2cd9f5e585f618ec635da392faaa1dda2e192f628a42037ff87"
  head "https://gist.github.com/0a5717868f21a29ab96c914ddd55a409.git"

  depends_on :macos
  depends_on "php"

  def install
    bin.install "macos_keyboard_shortcuts_exporter_importer.php" => "mksei"
  end
end
