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
  version "0.17.0-next.g67d9645"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g67d9645/alvera-0.17.0-next.g67d9645-darwin-arm64.tar.gz"
      sha256 "c89511af106524bd5875fa6f48afa86f2ea38a9ca496c3bcd0ab86e8ee6d4d81"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g67d9645/alvera-0.17.0-next.g67d9645-darwin-x64.tar.gz"
      sha256 "52e12d23d369494950d616451065f751a364525bcc46b5e112b5f44d1ae91064"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g67d9645/alvera-0.17.0-next.g67d9645-linux-x64.tar.gz"
      sha256 "1cc922edfc06049dd86255c5cbb7cda61d0676ebde9affc4808ca40a049cd525"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g67d9645/alvera-0.17.0-next.g67d9645-linux-arm64.tar.gz"
      sha256 "ea4ee2cbcadb33c1c6a32f681577eda56102d864731525a718d2cbb4c8e56b83"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
