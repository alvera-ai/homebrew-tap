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
  version "0.21.1-next.ge834089"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.1-next.ge834089/alvera-0.21.1-next.ge834089-darwin-arm64.tar.gz"
      sha256 "51eb3bdbb6bc9d7e1d39524c112124872717cef8f2385c4b895b790471fb93bd"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.1-next.ge834089/alvera-0.21.1-next.ge834089-darwin-x64.tar.gz"
      sha256 "7effc41bce512ad0b12d54c386e1fbc17317d535ba55a0ac0db9f4a69517ce30"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.1-next.ge834089/alvera-0.21.1-next.ge834089-linux-x64.tar.gz"
      sha256 "17a377cef479e0f5e2d680efb8972ce8505a8a64e09cc8e88c3174756ef832f5"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.1-next.ge834089/alvera-0.21.1-next.ge834089-linux-arm64.tar.gz"
      sha256 "3da1f75035c9bed93a96293d3209708d5491f51ca96fbf20c726127a68ed003c"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
