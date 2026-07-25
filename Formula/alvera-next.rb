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
  version "0.13.0-next.g741ae56"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g741ae56/alvera-0.13.0-next.g741ae56-darwin-arm64.tar.gz"
      sha256 "036eacd4d0b6de1c84a8265630a136b9127c6cae5f67fc698d81b04fa4004b2d"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g741ae56/alvera-0.13.0-next.g741ae56-darwin-x64.tar.gz"
      sha256 "4631105e9194d2f2fc1ccda8af07b0f2a12a2eb29dda736274244881d209e245"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g741ae56/alvera-0.13.0-next.g741ae56-linux-x64.tar.gz"
      sha256 "22bfcfdc385d695baaebeabbc08b004f9ce9cd96fb886cc4137043c254d01936"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g741ae56/alvera-0.13.0-next.g741ae56-linux-arm64.tar.gz"
      sha256 "4db1af9c5c9bfffed2a381d72d449102811f26bf195fb68f27a644999d61fee6"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
