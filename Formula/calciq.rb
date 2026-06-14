# Homebrew formula — version + sha256 are filled in by packaging/release-cli.sh.
class Calciq < Formula
  desc "Terminal-native calculator (calciq CLI)"
  homepage "https://www.simplemind.dev/calciq"
  version "2.2.0"
  url "https://github.com/sqlaide/homebrew-calciq-releases/releases/download/v#{version}/calciq-macos-arm64.tar.gz"
  sha256 "8c35dccfc546bf3d6996836fe3432314cb356ffd8ff0902f3ae1ef397d44e63a"

  depends_on :macos

  def install
    bin.install "calciq"
  end

  test do
    assert_match "4", shell_output("#{bin}/calciq '2 + 2'")
  end
end
