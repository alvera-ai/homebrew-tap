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
  version "0.13.0-next.g555110b"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g555110b/alvera-0.13.0-next.g555110b-darwin-arm64.tar.gz"
      sha256 "ba9e608aef7fc4c3102343ecaf6143559099e46732d6d161e40553fcc9b33090"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g555110b/alvera-0.13.0-next.g555110b-darwin-x64.tar.gz"
      sha256 "973d4e244871aff236ffe2a4d20b324fd4aa15240490ec9054de8402005ed49c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g555110b/alvera-0.13.0-next.g555110b-linux-x64.tar.gz"
      sha256 "4bea5148813f15b44a642ad2c1297bff48283e42f20a168e66106b8852b2bac3"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.g555110b/alvera-0.13.0-next.g555110b-linux-arm64.tar.gz"
      sha256 "79c4f9fcf189e8fe76987c3276d3b71b91600b49fdcaa95399145a4fb622797e"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
