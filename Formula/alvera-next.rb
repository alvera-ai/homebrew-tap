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
  version "0.18.2-next.g6192a5c"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.2-next.g6192a5c/alvera-0.18.2-next.g6192a5c-darwin-arm64.tar.gz"
      sha256 "d8590679cd6dc9bd52e59a0749bc23461eb70950c8bebd569ada6e2164874d72"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.2-next.g6192a5c/alvera-0.18.2-next.g6192a5c-darwin-x64.tar.gz"
      sha256 "28e18f3fc2c8d700ded25b57aa81c54b8f50ea40c0d23b5ae5ee9eda52376a56"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.2-next.g6192a5c/alvera-0.18.2-next.g6192a5c-linux-x64.tar.gz"
      sha256 "74672608bfe445f38d4a2d86c9ebd234bfc3ddaf84844c230aa3c5a4bcf2bdfa"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.2-next.g6192a5c/alvera-0.18.2-next.g6192a5c-linux-arm64.tar.gz"
      sha256 "47906fa147db86c530c6f073293114cf0dc627988238d86d92cfc43ee00ed647"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
