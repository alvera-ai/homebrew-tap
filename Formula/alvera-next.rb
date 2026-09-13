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
  version "0.18.1-next.g1439f68"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.1-next.g1439f68/alvera-0.18.1-next.g1439f68-darwin-arm64.tar.gz"
      sha256 "89b437644e50781505173f1ec68fda08594f8152accfe2317e35cc794988c1c8"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.1-next.g1439f68/alvera-0.18.1-next.g1439f68-darwin-x64.tar.gz"
      sha256 "3fbe9f283415589102877af5ba2cae42aea7233faa6eb33e0d927dbec6b109c0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.1-next.g1439f68/alvera-0.18.1-next.g1439f68-linux-x64.tar.gz"
      sha256 "621414899d23ba76f6b5d0a270ec2abc83f95a66360ee9363e02dabdbec0cf9a"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.1-next.g1439f68/alvera-0.18.1-next.g1439f68-linux-arm64.tar.gz"
      sha256 "0ed38fc327941625ff70fde29707483fcc41c53335728116078967bd03e63939"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
