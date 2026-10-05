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
  version "0.21.1-next.g9186313"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.1-next.g9186313/alvera-0.21.1-next.g9186313-darwin-arm64.tar.gz"
      sha256 "da5315deb78d4dd37ce7ec9c75a83bc778c81d157dc4ae528235bd38047017b7"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.1-next.g9186313/alvera-0.21.1-next.g9186313-darwin-x64.tar.gz"
      sha256 "5a693ac339049d7ad81f7b12f106f5cda348489b540e7913be686685efe10c98"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.1-next.g9186313/alvera-0.21.1-next.g9186313-linux-x64.tar.gz"
      sha256 "b701f5b42b39878da99abed3738fc83fb96bdc27d6ad2091c0275c7b385f1eb0"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.1-next.g9186313/alvera-0.21.1-next.g9186313-linux-arm64.tar.gz"
      sha256 "c5187811cd92ae6e1884be327ffc193c25982f96414120d3de6d9f7239b06b70"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
