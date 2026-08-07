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
  version "0.15.0-next.gf9ab4f0"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.gf9ab4f0/alvera-0.15.0-next.gf9ab4f0-darwin-arm64.tar.gz"
      sha256 "0b4f4a5b63741e8e4a4f9822a918ead71b5385c28df6fb6a588a509caa3652ec"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.gf9ab4f0/alvera-0.15.0-next.gf9ab4f0-darwin-x64.tar.gz"
      sha256 "5625e4bd1db6941c8c76900213c00b0e5fe433614d97b6cf18f1694f7fd754d7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.gf9ab4f0/alvera-0.15.0-next.gf9ab4f0-linux-x64.tar.gz"
      sha256 "8955310b0bfb6b3303507cec3b799a217a1233b68d6431960a3f1c3b39308373"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.gf9ab4f0/alvera-0.15.0-next.gf9ab4f0-linux-arm64.tar.gz"
      sha256 "fa863f65d8fbe1fe37037b78382c3188004cb5a77469de5f82130d41d4588c76"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
