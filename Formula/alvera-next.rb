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
  version "0.12.1-next.g47e3f28"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g47e3f28/alvera-0.12.1-next.g47e3f28-darwin-arm64.tar.gz"
      sha256 "b9468c995e0555ff1f61a22e0d715c408e9368047570cf0705c63ced8ac2df49"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g47e3f28/alvera-0.12.1-next.g47e3f28-darwin-x64.tar.gz"
      sha256 "358fb9c3368bcdf7a71f063a28402679289203af5dfcd3223b58fd9429a8a2f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g47e3f28/alvera-0.12.1-next.g47e3f28-linux-x64.tar.gz"
      sha256 "c6484bb3f535f21e5706cc55ec608a0d9b50669fea45fdeca50384b908f4f95f"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g47e3f28/alvera-0.12.1-next.g47e3f28-linux-arm64.tar.gz"
      sha256 "812b636e527422e6d22e66e5eda19fa12c6022ef2815d128c5a508c4f043fb3d"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
