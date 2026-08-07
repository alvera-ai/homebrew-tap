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
  version "0.15.0-next.g2f28e7b"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.g2f28e7b/alvera-0.15.0-next.g2f28e7b-darwin-arm64.tar.gz"
      sha256 "a23d59368cfdca81eb3671edae56907e9ca3aecb209496ad325cb489af1d2b51"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.g2f28e7b/alvera-0.15.0-next.g2f28e7b-darwin-x64.tar.gz"
      sha256 "31221dad2065cd704e218c52333e9b163bb7b6b6fd470c589d72726abdfa1f51"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.g2f28e7b/alvera-0.15.0-next.g2f28e7b-linux-x64.tar.gz"
      sha256 "34e0d953c7a7a2823dffb268bc90d33c040dca7bc5f332cc4b0fba24292db267"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.g2f28e7b/alvera-0.15.0-next.g2f28e7b-linux-arm64.tar.gz"
      sha256 "d4807148537aa2e69fc6f699652e2af01d5bcfc88190b09cf7392cd5eafca06e"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
