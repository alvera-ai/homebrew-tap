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
  version "0.12.1-next.g0c41b6a"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g0c41b6a/alvera-0.12.1-next.g0c41b6a-darwin-arm64.tar.gz"
      sha256 "dc1da56fb28b25fda956602b0546958b393782873ae509265db988744c02db47"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g0c41b6a/alvera-0.12.1-next.g0c41b6a-darwin-x64.tar.gz"
      sha256 "7b3dd697e6641ebe0c41f824cbf1d98cba3b1aee473ac9343184795fe1679ecd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g0c41b6a/alvera-0.12.1-next.g0c41b6a-linux-x64.tar.gz"
      sha256 "e7140d132481c0960cc8cd545d0711eb8cab234e1e3cd3e6814a35dc9f149fb8"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g0c41b6a/alvera-0.12.1-next.g0c41b6a-linux-arm64.tar.gz"
      sha256 "2327133e407410b2997807fd03f22c980396e8850f7583e67d59cba720a9fe2c"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
