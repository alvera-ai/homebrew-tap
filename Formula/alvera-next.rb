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
  version "0.13.0-next.g0506069"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g0506069/alvera-0.13.0-next.g0506069-darwin-arm64.tar.gz"
      sha256 "aaefc5b23ed07cf22dccac01be68dcde3c4f629ec7b9f177977000e6e378be2b"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g0506069/alvera-0.13.0-next.g0506069-darwin-x64.tar.gz"
      sha256 "e5a1b2e6634528794ca33555f2c15694e6ce0b119437e3ebe003512b316fd7f6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g0506069/alvera-0.13.0-next.g0506069-linux-x64.tar.gz"
      sha256 "6127b29b30cb18b0c44e6c07ac59f3064d914381af76eb9cd0f5141120e5457b"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g0506069/alvera-0.13.0-next.g0506069-linux-arm64.tar.gz"
      sha256 "54f2fa493c6b116c61dcdd85eb514009cce93b92b01cf6542b0761ee8632642a"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
