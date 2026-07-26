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
  version "0.13.0-next.gf8f28bd"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.gf8f28bd/alvera-0.13.0-next.gf8f28bd-darwin-arm64.tar.gz"
      sha256 "ee9f51c78e77987589af5574e42cc1f141d9357aadf2e8e951158f2c9b01522d"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.gf8f28bd/alvera-0.13.0-next.gf8f28bd-darwin-x64.tar.gz"
      sha256 "1b9341948908bcb476714fdc5f5fa77a29d7771b8c8ba242e33d2785f962da86"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.gf8f28bd/alvera-0.13.0-next.gf8f28bd-linux-x64.tar.gz"
      sha256 "5eeafb10209ceb960eac3ee1ad4ce71db8e57e5621035322fa75895d0f08ad3c"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.gf8f28bd/alvera-0.13.0-next.gf8f28bd-linux-arm64.tar.gz"
      sha256 "62f3402891716dd16ad8007ea8ea74d6e5a09105bf01a44d5d1c2843cb94332b"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
