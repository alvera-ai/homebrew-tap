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
  version "0.20.0-next.g8dc7938"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.20.0-next.g8dc7938/alvera-0.20.0-next.g8dc7938-darwin-arm64.tar.gz"
      sha256 "828bfae9cee588aea31c0f18452584babe093bcee3c538d772b8d5475f0c29d3"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.20.0-next.g8dc7938/alvera-0.20.0-next.g8dc7938-darwin-x64.tar.gz"
      sha256 "6bdb87aa2d2931647ebc7959d92e12de43ad66e1af0b06523316d1acc8c6fe85"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.20.0-next.g8dc7938/alvera-0.20.0-next.g8dc7938-linux-x64.tar.gz"
      sha256 "e24388d78799944c37d3e42e9933bb0b4033bdf67264a8790ed9f71ac6c4bd49"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.20.0-next.g8dc7938/alvera-0.20.0-next.g8dc7938-linux-arm64.tar.gz"
      sha256 "82f7e4f6945874f159d6fd3f7ae1fed8b29bd0d93090be1440ce0529fd1aff06"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
