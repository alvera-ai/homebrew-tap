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
  version "0.17.0-next.g1a60547"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g1a60547/alvera-0.17.0-next.g1a60547-darwin-arm64.tar.gz"
      sha256 "b2c4014417159086a3a4df441424dc67cb4e4c7fa04624120e89616f985055fe"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g1a60547/alvera-0.17.0-next.g1a60547-darwin-x64.tar.gz"
      sha256 "2d2be62217e6d5f922f3c04308ee61fe748776443134dd157955fdc2fd564ab2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g1a60547/alvera-0.17.0-next.g1a60547-linux-x64.tar.gz"
      sha256 "73c811cec85e69186e3e69b7594b69d779b6fd1681437b1ea963ff8768ba48b1"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g1a60547/alvera-0.17.0-next.g1a60547-linux-arm64.tar.gz"
      sha256 "253e02508e6600843c4fe01e5abb44fd620874d67c42dd0f7b12d55bfbb6a60e"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
