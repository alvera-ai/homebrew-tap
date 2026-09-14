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
  version "0.18.2-next.g07c6b85"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.2-next.g07c6b85/alvera-0.18.2-next.g07c6b85-darwin-arm64.tar.gz"
      sha256 "1e0b7ca4951b06d623e5eff5ae166ee813efac6de6d9c79aefb2e7c1730b6f12"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.2-next.g07c6b85/alvera-0.18.2-next.g07c6b85-darwin-x64.tar.gz"
      sha256 "5c63ec0047556179ee0a20ed11e02f5e4e753cd866fcbd98352e70a3edd1156d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.2-next.g07c6b85/alvera-0.18.2-next.g07c6b85-linux-x64.tar.gz"
      sha256 "4110d3d54bbcaf9280a589879e055666c7b162b6661e2940aaefae0491ef9c18"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.2-next.g07c6b85/alvera-0.18.2-next.g07c6b85-linux-arm64.tar.gz"
      sha256 "9ce18201749c454cf524dbd31df133d10903ad603e0feba15eb70886b1867c48"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
