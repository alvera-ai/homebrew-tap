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
  version "0.12.1-next.ged1e554"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.ged1e554/alvera-0.12.1-next.ged1e554-darwin-arm64.tar.gz"
      sha256 "d2dcf194bfba9aa5b052b8110c55d16ebf0e78da01749f1c7a9b3aa16915fdbd"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.ged1e554/alvera-0.12.1-next.ged1e554-darwin-x64.tar.gz"
      sha256 "a8874ac828055fa7492ddd70414c14b3369f3bf26948e8c522b28d6863e30e1f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.ged1e554/alvera-0.12.1-next.ged1e554-linux-x64.tar.gz"
      sha256 "df70bfdc60730dc43c13866f8b473917eb56d81de7b4cc0a2ed8fdd5536ec4a3"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.ged1e554/alvera-0.12.1-next.ged1e554-linux-arm64.tar.gz"
      sha256 "0343a09848026b8bf62eec66ed6a877009d42cd85b8a524275d2d52475edbe2f"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
