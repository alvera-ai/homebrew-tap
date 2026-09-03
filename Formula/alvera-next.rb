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
  version "0.17.0-next.g3ffea55"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g3ffea55/alvera-0.17.0-next.g3ffea55-darwin-arm64.tar.gz"
      sha256 "09ad896ac7ecefe3c89646655b8cbf5095c4ac620d55ef3e566e55576b7cd9c9"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g3ffea55/alvera-0.17.0-next.g3ffea55-darwin-x64.tar.gz"
      sha256 "b83ba60d74a5adb4682558f6b6922896639c03a696641fc4cf9c8d777bf83d9b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g3ffea55/alvera-0.17.0-next.g3ffea55-linux-x64.tar.gz"
      sha256 "43237cae29ec9790f4f8ab6ba8291d2f116b6df8f5182b0daa588b03b86233c1"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g3ffea55/alvera-0.17.0-next.g3ffea55-linux-arm64.tar.gz"
      sha256 "c6e61bf40654f46a9bacca756d74bf01c4797d3620bcfc47ac04791a08b31fa9"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
