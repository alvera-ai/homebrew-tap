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
  version "0.12.1-next.gf518772"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gf518772/alvera-0.12.1-next.gf518772-darwin-arm64.tar.gz"
      sha256 "d49e99ec59310760d375c4678ba0679bace3ecd4dae36a9229a9a31147ce639d"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gf518772/alvera-0.12.1-next.gf518772-darwin-x64.tar.gz"
      sha256 "afb4fb088ad90b250330e784ce98bef70ca71af1d26ad3230e0fd25f5ddec4bc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gf518772/alvera-0.12.1-next.gf518772-linux-x64.tar.gz"
      sha256 "6d3617897bf64507a76cc70800c1169874f628b05bf48627fc532a80c0c249fb"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gf518772/alvera-0.12.1-next.gf518772-linux-arm64.tar.gz"
      sha256 "b3187566fe770fa76a95b84130dc1f03077e4daf01fb49260e29450e36eadc03"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
