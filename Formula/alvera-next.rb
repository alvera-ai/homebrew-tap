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
  version "0.17.0-next.g605e2c0"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g605e2c0/alvera-0.17.0-next.g605e2c0-darwin-arm64.tar.gz"
      sha256 "852434fe838cbfdad17aacc393d6ce40f062666953f8c2f345c2026772738499"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g605e2c0/alvera-0.17.0-next.g605e2c0-darwin-x64.tar.gz"
      sha256 "6085a43810c2bc3068272959b7261ef3c3a4a748d7cf3046f6db410fa1a5026e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g605e2c0/alvera-0.17.0-next.g605e2c0-linux-x64.tar.gz"
      sha256 "bd6c9685d3866cd51f8b3079eb525edc6ba757f7178ab9a2baee95a67fa7ae0e"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g605e2c0/alvera-0.17.0-next.g605e2c0-linux-arm64.tar.gz"
      sha256 "dc17617e80f5979271192098b0d66fa803f1ec14ae822b508a30fe863615efc2"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
