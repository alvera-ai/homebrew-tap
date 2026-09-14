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
  version "0.18.2-next.g3d25f75"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.2-next.g3d25f75/alvera-0.18.2-next.g3d25f75-darwin-arm64.tar.gz"
      sha256 "2c9b891b3eba0bb7c377d153ab2418769036e7c34647c01ed116814c0c857895"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.2-next.g3d25f75/alvera-0.18.2-next.g3d25f75-darwin-x64.tar.gz"
      sha256 "043f982dce2e68052da9904c4f84aebe95dcb2efe062baed17099413d2f5e368"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.2-next.g3d25f75/alvera-0.18.2-next.g3d25f75-linux-x64.tar.gz"
      sha256 "c90a6297f6f7669d782e50330310c5c4de3b17e0b900fee0a7097f4ce05bf4ac"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.2-next.g3d25f75/alvera-0.18.2-next.g3d25f75-linux-arm64.tar.gz"
      sha256 "d35e240c5f5b218df876021606c95d392e2bf5eb78c3314f5ec44bb4e93ab189"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
