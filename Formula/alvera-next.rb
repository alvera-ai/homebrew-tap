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
  version "0.12.1-next.g24ab775"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g24ab775/alvera-0.12.1-next.g24ab775-darwin-arm64.tar.gz"
      sha256 "5753938ac29d6021e0c5cee32157c434ea100104dc8906ece0b9fc45d31bcd39"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g24ab775/alvera-0.12.1-next.g24ab775-darwin-x64.tar.gz"
      sha256 "17e38380c443e088fb3fa2fb657308e32b949ecc9e3176e7ee1467cf11ab3cde"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g24ab775/alvera-0.12.1-next.g24ab775-linux-x64.tar.gz"
      sha256 "e99440a9254e49544e78fe69ea13b97aeab1346e5cd305f5b77df76e556f048b"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g24ab775/alvera-0.12.1-next.g24ab775-linux-arm64.tar.gz"
      sha256 "c658557ddf4dc2ffb1bb3682e3f78ee22a236c6efc39a1d6987b9877acee0918"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
