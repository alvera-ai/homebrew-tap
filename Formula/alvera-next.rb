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
  version "0.13.0-next.g6318937"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g6318937/alvera-0.13.0-next.g6318937-darwin-arm64.tar.gz"
      sha256 "0907656c9475713adb023fb9c3a76f6ecc18d692a4001cc51101b5ce12359d38"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g6318937/alvera-0.13.0-next.g6318937-darwin-x64.tar.gz"
      sha256 "7c49e5037de608b571f8a59c8c57c2da3fa4680d38fbed1c8de7fccfe33e5cb5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g6318937/alvera-0.13.0-next.g6318937-linux-x64.tar.gz"
      sha256 "beda3c31e42da07ea8ba0ac5f85e30f040a2131581c787cecace5adfc2491845"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g6318937/alvera-0.13.0-next.g6318937-linux-arm64.tar.gz"
      sha256 "47bb1d7252f1ff74db29cfffa767bf7bd8bc262b7ba483572b200b4ee9cfed18"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
