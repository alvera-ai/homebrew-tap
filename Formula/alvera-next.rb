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
  version "0.17.0-next.g3186053"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g3186053/alvera-0.17.0-next.g3186053-darwin-arm64.tar.gz"
      sha256 "6c7b37fc34451daf7035f93afbb1ce711ca3f2e2e7ff00c829194cbaf060b455"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g3186053/alvera-0.17.0-next.g3186053-darwin-x64.tar.gz"
      sha256 "4f31e35ca1108867f54e34d9dce30d4cea2ec1e0a06a7fa0170e8b5bcdc47969"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g3186053/alvera-0.17.0-next.g3186053-linux-x64.tar.gz"
      sha256 "6af59374c2c0f42d0ae2c546543a070f775557a31a606a25eba07a49ed585c95"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g3186053/alvera-0.17.0-next.g3186053-linux-arm64.tar.gz"
      sha256 "1667cb8de5d9939bd7a1de918e1b760cdc3e3d3cc370dbb93e52bc13004d0ca7"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
