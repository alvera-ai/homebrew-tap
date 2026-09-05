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
  version "0.17.0-next.ga5515b9"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.ga5515b9/alvera-0.17.0-next.ga5515b9-darwin-arm64.tar.gz"
      sha256 "a887894d6641a5b939170c7873c97a1c14d3000c7d37fa3332e6c450169a3f44"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.ga5515b9/alvera-0.17.0-next.ga5515b9-darwin-x64.tar.gz"
      sha256 "b5b1ef7357d9873032f264731839e6097c63a796957e00cdeb6719ab7d283b93"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.ga5515b9/alvera-0.17.0-next.ga5515b9-linux-x64.tar.gz"
      sha256 "01def603c0c924653552e243d852f1d690da20ab8edb6502dafb70ca6f5d473f"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.ga5515b9/alvera-0.17.0-next.ga5515b9-linux-arm64.tar.gz"
      sha256 "c4704a0e28dd4413a3a73099aaf6cb24d4e2deaf5a600396decfe16aa9242d22"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
