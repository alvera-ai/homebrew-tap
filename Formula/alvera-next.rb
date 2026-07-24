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
  version "0.13.0-next.g1e47541"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g1e47541/alvera-0.13.0-next.g1e47541-darwin-arm64.tar.gz"
      sha256 "5591f65f30e1b50c69f9f754d83070c81bbd956c96840fde331af41c6a164614"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g1e47541/alvera-0.13.0-next.g1e47541-darwin-x64.tar.gz"
      sha256 "867b328a705df0627410ee74bcc902c0179cbc7e4e55b40adea0d77b42f0bddb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g1e47541/alvera-0.13.0-next.g1e47541-linux-x64.tar.gz"
      sha256 "342384cb7720986857048e8eb46a22c7e80c3d10f1709371875d3ef8cbc3600c"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g1e47541/alvera-0.13.0-next.g1e47541-linux-arm64.tar.gz"
      sha256 "483f67739f90dc55dadca6e80dbee0db862f6606209f70fcbeff400fe1768c77"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
