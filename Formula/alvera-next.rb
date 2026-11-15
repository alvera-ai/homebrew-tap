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
  version "0.22.0-next.g01deb58"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.22.0-next.g01deb58/alvera-0.22.0-next.g01deb58-darwin-arm64.tar.gz"
      sha256 "3f02a6beebfaca4dec03b8a0c4223fff803b50df6815077476ec7f72073904cb"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.22.0-next.g01deb58/alvera-0.22.0-next.g01deb58-darwin-x64.tar.gz"
      sha256 "051f3c25b82e7b67842e415cf4ae3a6530505516a0d0c10ae64219fd52d0dbb8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.22.0-next.g01deb58/alvera-0.22.0-next.g01deb58-linux-x64.tar.gz"
      sha256 "3b0fe9c1586241dced5ef42c2ff40a9b68b708549d093ad052a53c519212b723"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.22.0-next.g01deb58/alvera-0.22.0-next.g01deb58-linux-arm64.tar.gz"
      sha256 "b3fb9b888ba329c513efbbb97dc7c3f51fda4700518cec7a15c69a12c5f03cf8"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
