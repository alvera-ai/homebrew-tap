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
  version "0.18.2-next.g5e3a62d"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.2-next.g5e3a62d/alvera-0.18.2-next.g5e3a62d-darwin-arm64.tar.gz"
      sha256 "ba0e1569cd04b529c1ba705ce47b2833386b1114f899bd8cc950c8300b3298f0"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.2-next.g5e3a62d/alvera-0.18.2-next.g5e3a62d-darwin-x64.tar.gz"
      sha256 "d0546a2db8548821cd5ac38212c9ed4da749d962feb40594a85dc4908206443c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.2-next.g5e3a62d/alvera-0.18.2-next.g5e3a62d-linux-x64.tar.gz"
      sha256 "90e937d97116863b10d19b36c53c336701d5df880c1e4efaac4be573767b86d3"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.2-next.g5e3a62d/alvera-0.18.2-next.g5e3a62d-linux-arm64.tar.gz"
      sha256 "d1b0654d6cdedb9c72dc6fd914d9aa5dd71d17dab1bd9a5d81007fa086f2538e"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
