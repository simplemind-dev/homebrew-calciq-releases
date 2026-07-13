# Homebrew formula — version + sha256 are filled in by packaging/release-cli.sh.
class Calciq < Formula
  desc "Terminal-native calculator (calciq CLI)"
  homepage "https://www.simplemind.dev/calciq"
  version "2.3.1"
  url "https://github.com/sqlaide/homebrew-calciq-releases/releases/download/v#{version}/calciq-macos-arm64.tar.gz"
  sha256 "85e453f4e88e9488a57460835dd58608ea555ad1ae37eb5a98d0581ce328388e"

  depends_on :macos

  def install
    bin.install "calciq"
  end

  test do
    assert_match "4", shell_output("#{bin}/calciq '2 + 2'")
  end
end
