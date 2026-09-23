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
  version "0.19.2-next.gd6873f7"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.19.2-next.gd6873f7/alvera-0.19.2-next.gd6873f7-darwin-arm64.tar.gz"
      sha256 "420263a18178004c5a7dafea95be1cd37d0fbacd6dfc80869b257b1d2dd15d9c"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.19.2-next.gd6873f7/alvera-0.19.2-next.gd6873f7-darwin-x64.tar.gz"
      sha256 "68d6266f88f3d2fe94c831f513803c49697c209a4414771c97ef50efb618caff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.19.2-next.gd6873f7/alvera-0.19.2-next.gd6873f7-linux-x64.tar.gz"
      sha256 "125149f433a411981902d06ac65c92e40ee64da2991fb165b37ddf39299267f6"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.19.2-next.gd6873f7/alvera-0.19.2-next.gd6873f7-linux-arm64.tar.gz"
      sha256 "42521693fcf6aeba7c78966db7d9b13e39447a995d4be5b49435ceb8874de38c"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
