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
  version "0.12.1-next.gd712650"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gd712650/alvera-0.12.1-next.gd712650-darwin-arm64.tar.gz"
      sha256 "31c67a629452e693449a6b8ede13093fe3b3de43f378dd64fd17c5f43cdc0c3c"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gd712650/alvera-0.12.1-next.gd712650-darwin-x64.tar.gz"
      sha256 "6f3d1b03c5a45fead998ec6b10ae2b04ccfb3bf01db4c2e76fc33471a901183f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gd712650/alvera-0.12.1-next.gd712650-linux-x64.tar.gz"
      sha256 "8fe2408233ca72ae0f230e93d228f6a28445b112800f800a9fbbc193e1fa2fae"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gd712650/alvera-0.12.1-next.gd712650-linux-arm64.tar.gz"
      sha256 "87e6d18d69d2c978ef04730e14d49786e0c3ec48033f65ac62890a85d2c3904a"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
