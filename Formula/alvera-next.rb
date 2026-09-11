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
  version "0.18.0-next.g49897f5"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.0-next.g49897f5/alvera-0.18.0-next.g49897f5-darwin-arm64.tar.gz"
      sha256 "ddc0632b5957145e79d2eb8abf5571fe24dc7d63d6460862bf0de44fe90a16c7"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.0-next.g49897f5/alvera-0.18.0-next.g49897f5-darwin-x64.tar.gz"
      sha256 "e478ccf069721726a8f49efcdc48c80c7c162ceb50877ed8deafc71543b2baa5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.0-next.g49897f5/alvera-0.18.0-next.g49897f5-linux-x64.tar.gz"
      sha256 "626149ee5fbc73ad2bf1473e2c3f4c01bb3120dff972b82319754c79863c20d0"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.0-next.g49897f5/alvera-0.18.0-next.g49897f5-linux-arm64.tar.gz"
      sha256 "364e26aea56b232aeec1d7d69289199fcbe4daa5a243a01e171824b9a2bc2a84"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
