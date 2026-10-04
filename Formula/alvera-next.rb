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
  version "0.20.0-next.gcd2f231"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.20.0-next.gcd2f231/alvera-0.20.0-next.gcd2f231-darwin-arm64.tar.gz"
      sha256 "817020a18f33e0009faa4d6574dbd6e114766f8247e40cc1c0c33b90071b8daf"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.20.0-next.gcd2f231/alvera-0.20.0-next.gcd2f231-darwin-x64.tar.gz"
      sha256 "934ecc888a751efd1a0e86a563444e6d069d543dfdfde8f0a805d7bca440059e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.20.0-next.gcd2f231/alvera-0.20.0-next.gcd2f231-linux-x64.tar.gz"
      sha256 "952f98a7ad6cea3fe0474dff91833de7fdddcf79d93d93bd2f1846eb245a086e"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.20.0-next.gcd2f231/alvera-0.20.0-next.gcd2f231-linux-arm64.tar.gz"
      sha256 "ecba748beb47ee3d1eb3ecd7fad316625dbb845f5555385a09a8076584fcf095"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
