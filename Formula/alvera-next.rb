# Prerelease channel for the alvera CLI. keg_only so it installs
# alongside the stable alvera formula without clobbering it; point the
# alvera command at this build on demand with
#   brew link --overwrite --force alvera-next
# and revert with
#   brew unlink alvera-next
# Updated by release-cli.yml on every prerelease (next dispatch or rc tag).
class AlveraNext < Formula
  desc "Alvera platform CLI (prerelease channel) — point alvera at unstable on demand"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.17.0-next.gd1a7bc8"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.gd1a7bc8/alvera-0.17.0-next.gd1a7bc8-darwin-arm64.tar.gz"
      sha256 "9202523d4ff32a5c39f20bf8c648674fec92ef8430b87ccd8dc1caed2af6549e"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.gd1a7bc8/alvera-0.17.0-next.gd1a7bc8-darwin-x64.tar.gz"
      sha256 "0003cddd38e31d976139c8136a78efb8842d03cbe33d68b78e5afed47db10378"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.gd1a7bc8/alvera-0.17.0-next.gd1a7bc8-linux-x64.tar.gz"
      sha256 "52da6218076403de7e3cc89a7cc1771d23df252962e9d16edae154905e8100e6"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.gd1a7bc8/alvera-0.17.0-next.gd1a7bc8-linux-arm64.tar.gz"
      sha256 "5621ac7982468800fb86b634955abf1ad0bead6f7d0e033b792017c929fdc132"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
