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
  version "0.12.1-next.gbe284d7"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gbe284d7/alvera-0.12.1-next.gbe284d7-darwin-arm64.tar.gz"
      sha256 "0f8148ced44b1f4e0a71201c32942bdb532443cd130f9ebf99f9c1482093da1b"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gbe284d7/alvera-0.12.1-next.gbe284d7-darwin-x64.tar.gz"
      sha256 "f2df1261729d426ed9d86b6fe9ce82fa019c7d3778d0ca69e9886aacae19da46"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gbe284d7/alvera-0.12.1-next.gbe284d7-linux-x64.tar.gz"
      sha256 "1ee3298f0bffee0c15af0a79cbe7eb3c3c4ac9567bdfc965a9037f3b58a4741a"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gbe284d7/alvera-0.12.1-next.gbe284d7-linux-arm64.tar.gz"
      sha256 "f9b8984ac80b7404b0c5f668f0387ca6a0810d1e7e7025e662a378d36c51a31a"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
