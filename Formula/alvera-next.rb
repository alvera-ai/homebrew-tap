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
  version "0.17.0-next.gd9e9076"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.gd9e9076/alvera-0.17.0-next.gd9e9076-darwin-arm64.tar.gz"
      sha256 "658b1a090ed45184d5effd96e00dfd9a39dac22cc57739835df6ff121b28ca1d"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.gd9e9076/alvera-0.17.0-next.gd9e9076-darwin-x64.tar.gz"
      sha256 "fd32fb10c4353251b991ff4e2b3eb537b57f372b5114843757ad8793f82f73f8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.gd9e9076/alvera-0.17.0-next.gd9e9076-linux-x64.tar.gz"
      sha256 "9f13b1d8aaf244d92416d4c559e213aa066121dcd212db43c55301492589608e"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.gd9e9076/alvera-0.17.0-next.gd9e9076-linux-arm64.tar.gz"
      sha256 "45c521219803ba2e332f152be5db77d627316cfa44df84b546ce8cb2c504a520"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
