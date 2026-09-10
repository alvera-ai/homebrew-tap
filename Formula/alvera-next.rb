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
  version "0.18.0-next.g58b9183"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.0-next.g58b9183/alvera-0.18.0-next.g58b9183-darwin-arm64.tar.gz"
      sha256 "48007da3b3eea35c67750b7245d27e59e64bd61bd27e46279da13c649372b313"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.0-next.g58b9183/alvera-0.18.0-next.g58b9183-darwin-x64.tar.gz"
      sha256 "2002ee6501b3e05597363739b44297771136be32d9a209a4896ebf9c52f96413"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.0-next.g58b9183/alvera-0.18.0-next.g58b9183-linux-x64.tar.gz"
      sha256 "bc020848a1badda19f351bfa16c71af20d8a4cec4891acb69e89f50b7d5e96eb"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.0-next.g58b9183/alvera-0.18.0-next.g58b9183-linux-arm64.tar.gz"
      sha256 "ee19f1f62c439b8e5e0a06c4c86602eae45a7e2d1c5f6fddb95169e356360833"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
