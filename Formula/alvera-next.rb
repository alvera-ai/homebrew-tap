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
  version "0.17.0-next.gb2d95b1"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.gb2d95b1/alvera-0.17.0-next.gb2d95b1-darwin-arm64.tar.gz"
      sha256 "38c4d5ad79b1ade96666126fcf46447902678e346d251787dfaf3c23ba6fb865"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.gb2d95b1/alvera-0.17.0-next.gb2d95b1-darwin-x64.tar.gz"
      sha256 "460103fc988f9d30f5487a070df57ad5e330af3f31609cbc22f8611ca9e88e42"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.gb2d95b1/alvera-0.17.0-next.gb2d95b1-linux-x64.tar.gz"
      sha256 "50722dec37b4ed1fe7c1af21400b40b4e520ce29b5588563148f746ad9353b2d"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.gb2d95b1/alvera-0.17.0-next.gb2d95b1-linux-arm64.tar.gz"
      sha256 "11b3528d391c61637222d363da4e5503315bd5df6aad7092bed152b95221c5d2"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
