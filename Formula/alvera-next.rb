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
  version "0.12.1-next.g1cfe79a"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g1cfe79a/alvera-0.12.1-next.g1cfe79a-darwin-arm64.tar.gz"
      sha256 "5deef46572580df00bd3f054144501cbbc0e086e341b565f880e57f2172cb8f5"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g1cfe79a/alvera-0.12.1-next.g1cfe79a-darwin-x64.tar.gz"
      sha256 "4ff2d99290279563d6af2f37c592ed3a52578dc91891543d0c85f01d365d0d58"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g1cfe79a/alvera-0.12.1-next.g1cfe79a-linux-x64.tar.gz"
      sha256 "514829875c1d4f7bfd487c08b871de90e175f194367a5d1332204ef58ec009b1"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g1cfe79a/alvera-0.12.1-next.g1cfe79a-linux-arm64.tar.gz"
      sha256 "4cedbc5a55acd2dd912210b835bd62b89ef4aac8079f392a5239488592dfe17d"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
