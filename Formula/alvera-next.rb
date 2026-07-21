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
  version "0.13.0-next.gf3d2a4a"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.gf3d2a4a/alvera-0.13.0-next.gf3d2a4a-darwin-arm64.tar.gz"
      sha256 "0a5e49a7e404732a7a177af04415724a446fc81ac8a890d3f8675ee1a427a0b1"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.gf3d2a4a/alvera-0.13.0-next.gf3d2a4a-darwin-x64.tar.gz"
      sha256 "001227e14eb080706997b41e585acbb8511538611987c25fbd9ff3f9cd7b1913"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.gf3d2a4a/alvera-0.13.0-next.gf3d2a4a-linux-x64.tar.gz"
      sha256 "d18394877728f7ee57db3b472d16ade030b8dac6aee8610e40b1d00fcb177bee"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.gf3d2a4a/alvera-0.13.0-next.gf3d2a4a-linux-arm64.tar.gz"
      sha256 "b2957745e68df02830db6f2c218446f6ddc8292d96b1e4e08f8aee6ae0997a71"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
