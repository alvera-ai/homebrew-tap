# Prerelease channel for the alvera CLI. keg_only so it installs
# alongside the stable alvera formula without clobbering it; point the
# alvera command at this build on demand with
#   brew link --overwrite alvera-next
# and revert with
#   brew unlink alvera-next
# Updated by release-cli.yml on every prerelease (next dispatch or rc tag).
class AlveraNext < Formula
  desc "Alvera platform CLI (prerelease channel) — point alvera at unstable on demand"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.12.1-next.g069328b"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g069328b/alvera-0.12.1-next.g069328b-darwin-arm64.tar.gz"
      sha256 "ab24610f34fa131ff50f71b1eaeaab1172a5c5ca0c3e8c5ae788592d6ae1610c"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g069328b/alvera-0.12.1-next.g069328b-darwin-x64.tar.gz"
      sha256 "56c56e5fb60fc67584008cce6383291331496a29fda7b32c90c3db80ed61fc7c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g069328b/alvera-0.12.1-next.g069328b-linux-x64.tar.gz"
      sha256 "249364693fe4f20df9b81668310211b937e3e6c7264f6915ee1ccf3343a8f975"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g069328b/alvera-0.12.1-next.g069328b-linux-arm64.tar.gz"
      sha256 "6b3a76e972ab6c1970cd354c7e91ae7976d17f3488f2b8684650e022226e846f"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
