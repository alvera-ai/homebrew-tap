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
  version "0.12.1-next.g4a1cce7"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g4a1cce7/alvera-0.12.1-next.g4a1cce7-darwin-arm64.tar.gz"
      sha256 "f4ee4c4e58f6e1b2d48ff3b24e567fdda4b679b5f80879b468cd53e17c92cc89"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g4a1cce7/alvera-0.12.1-next.g4a1cce7-darwin-x64.tar.gz"
      sha256 "6c6b39f4fd96e0c30f13dfa7d6a915d27c515c7f4f9dc0206d700157917e41a2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g4a1cce7/alvera-0.12.1-next.g4a1cce7-linux-x64.tar.gz"
      sha256 "4dc979267e1f328b8760ec6a508e9536257c0d530bc6b15f2ad032ebfce9cee3"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g4a1cce7/alvera-0.12.1-next.g4a1cce7-linux-arm64.tar.gz"
      sha256 "9bfb980013d2b6e65a40980cd0f11d24debca975bf002ea96eea283f3f6be0cc"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
