class Mksei < Formula
  version "1.1"
  sha256 "e6398ce7b989dd0e70798b7285104032e1992dabd121ac280cf27d46687dae8f"

  url "https://gist.githubusercontent.com/miclf/bf4b0cb6de9ead726197db7ed3d937b5/raw/a135140b52014273d59567f24983ded99e30ac2d/macos_keyboard_shortcuts_exporter_importer.php"
  desc "A small tool to automatically export and import custom macOS keyboard shortcuts."
  homepage "https://gist.github.com/miclf/bf4b0cb6de9ead726197db7ed3d937b5"
  head "https://gist.github.com/bf4b0cb6de9ead726197db7ed3d937b5.git"

  depends_on "php"
  def install
    bin.install "macos_keyboard_shortcuts_exporter_importer.php" =>  "mksei"
  end
end
