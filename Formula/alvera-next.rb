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
  version "0.17.0-next.g8996abc"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g8996abc/alvera-0.17.0-next.g8996abc-darwin-arm64.tar.gz"
      sha256 "6f8329a196aa6d76f186b0d35b09bfc10f88cad69a84c8c5beb872c9b6110b6c"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g8996abc/alvera-0.17.0-next.g8996abc-darwin-x64.tar.gz"
      sha256 "64f41e1082ce4b8a08163c608509a950be0d848cf5f2bd9637e8a444784ada2a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g8996abc/alvera-0.17.0-next.g8996abc-linux-x64.tar.gz"
      sha256 "05bce1fbdc9e705d2bf0d8925d155a399d9f61bff68254db6129e8b5a9878be9"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.g8996abc/alvera-0.17.0-next.g8996abc-linux-arm64.tar.gz"
      sha256 "0cadb0a13e185c373ccbe0e295e9e15bc6258298e61b244522619b4252ad5edb"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
