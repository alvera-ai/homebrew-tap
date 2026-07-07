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
  version "0.12.1-next.g11e0a7e"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g11e0a7e/alvera-0.12.1-next.g11e0a7e-darwin-arm64.tar.gz"
      sha256 "4e2d999769d3c3f8b9446e189dcf7c8365c1e0662f5b3597d409c5b17f84f598"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g11e0a7e/alvera-0.12.1-next.g11e0a7e-darwin-x64.tar.gz"
      sha256 "589b76660a22c2dd83808feefb8e42e506e7abe7d454f8b8b300916387024f98"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g11e0a7e/alvera-0.12.1-next.g11e0a7e-linux-x64.tar.gz"
      sha256 "c90be63d900b33b8eb3a60ac8a3b9879dd73bdbf7a3e92f59466de6e84e4e4f6"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g11e0a7e/alvera-0.12.1-next.g11e0a7e-linux-arm64.tar.gz"
      sha256 "e0e517e1c0170996ef0f857c124436a3bccaec119b07816deb3d17be1fd518ce"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
