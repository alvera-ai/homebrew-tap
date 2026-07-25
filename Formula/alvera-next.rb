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
  version "0.13.0-next.g6b3c8d7"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g6b3c8d7/alvera-0.13.0-next.g6b3c8d7-darwin-arm64.tar.gz"
      sha256 "c9e9d9a1a6125e7c56865139da13c3f5e4e4b1837fe267867885063393ab6105"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g6b3c8d7/alvera-0.13.0-next.g6b3c8d7-darwin-x64.tar.gz"
      sha256 "745679577bf7c689305e8105c7c1e370320e0df993362caa19aa6edcfedbf668"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g6b3c8d7/alvera-0.13.0-next.g6b3c8d7-linux-x64.tar.gz"
      sha256 "d60e8bde9e9fdc87aff067cef32875d3da8f0c3b60958cd7c29b0bb622d64aa0"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g6b3c8d7/alvera-0.13.0-next.g6b3c8d7-linux-arm64.tar.gz"
      sha256 "f394a6e79bbe2552ac625a83a1b4c1e81de07b3560e36efb75f05393934e8ba4"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
