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
  version "0.17.0-next.gff303b1"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.gff303b1/alvera-0.17.0-next.gff303b1-darwin-arm64.tar.gz"
      sha256 "6293794456a06629f115b74b8982e79db712e29fcb0e3db991b7a72f4ffdb9b5"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.gff303b1/alvera-0.17.0-next.gff303b1-darwin-x64.tar.gz"
      sha256 "bf7b97f2b304beee109d08b8180a1b8bb41d524bca8c323c2d17d54d9bfed2a2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.gff303b1/alvera-0.17.0-next.gff303b1-linux-x64.tar.gz"
      sha256 "14987d9c2af6e7eb6115053ed836e197b3ec61a9a035b2649979b28c09c22cec"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.gff303b1/alvera-0.17.0-next.gff303b1-linux-arm64.tar.gz"
      sha256 "6429fb83fb35e0b5710bb1f380a1d0e8c2b6daaf4a276222f380bcb1b9aa258d"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
