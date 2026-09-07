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
  version "0.17.0-next.g6c0f3a8"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g6c0f3a8/alvera-0.17.0-next.g6c0f3a8-darwin-arm64.tar.gz"
      sha256 "6cb2cc17f5d1b43246ae83c0c92ea71638fcd9af334ade7ed0f23fec9b7f0c3c"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g6c0f3a8/alvera-0.17.0-next.g6c0f3a8-darwin-x64.tar.gz"
      sha256 "e6bd4061c0da56b6207865dd96ee14ba9a63455c970b13c4fa28478773224861"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g6c0f3a8/alvera-0.17.0-next.g6c0f3a8-linux-x64.tar.gz"
      sha256 "a37c40be68248fb1c4d8cb6363c0b4473f1bcefa01d8a6be5c4336e931240acd"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g6c0f3a8/alvera-0.17.0-next.g6c0f3a8-linux-arm64.tar.gz"
      sha256 "083ba3e71b7e95cf1b817a7f4d400e182c5f8024d5a4a7f9bd9625392d695afb"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
