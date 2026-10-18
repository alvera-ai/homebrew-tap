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
  version "0.21.2-next.g9a94373"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.2-next.g9a94373/alvera-0.21.2-next.g9a94373-darwin-arm64.tar.gz"
      sha256 "95e2500c4328e3d6b1b9ab942fd975e94bddabdf901af513bd9c4f9bc2f29c8a"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.2-next.g9a94373/alvera-0.21.2-next.g9a94373-darwin-x64.tar.gz"
      sha256 "4613a2993c0c81cfa91c3069300848d0163a1062f13c5e77b68506e32f6fbfe6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.2-next.g9a94373/alvera-0.21.2-next.g9a94373-linux-x64.tar.gz"
      sha256 "5686294ec0b321e9dd5bcb77e73594a96d06ade4979c184e9f6f3eafb35dd4cc"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.2-next.g9a94373/alvera-0.21.2-next.g9a94373-linux-arm64.tar.gz"
      sha256 "6b18233f5bdbab8923efbf65d343b939899ce7f5342a56f36b983c6e387a4af4"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
