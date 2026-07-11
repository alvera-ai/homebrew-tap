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
  version "0.12.1-next.g6521012"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g6521012/alvera-0.12.1-next.g6521012-darwin-arm64.tar.gz"
      sha256 "ca3362cb6c04fc25752b8382ad29011b52af706adb93e826d57563a0a0afff04"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g6521012/alvera-0.12.1-next.g6521012-darwin-x64.tar.gz"
      sha256 "419149b17fcbaebecdef1904c403ebe2082c20935f7b6c4793d5d0aa6dbad4ab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g6521012/alvera-0.12.1-next.g6521012-linux-x64.tar.gz"
      sha256 "2767e653b3490f582eadde2c4b61b19f4062f3156f00fef1d17eb3faba67c7fc"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g6521012/alvera-0.12.1-next.g6521012-linux-arm64.tar.gz"
      sha256 "451f18ab13091c34a6a40f17d423f2891c1a3f30ac41b3d63e9badcbdb074b61"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
